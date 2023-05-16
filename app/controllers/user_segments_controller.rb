class UserSegmentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
      @user_segments = UserSegments.all
      render json: @user_segments
  end

  def show
    @user_segments = UserSegments.find(params[:id])
    render json: @user_segments
  end

  def update
    @user_segments = UserSegments.find(params[:id])
  end

  def create

    user_segments = UserSegments.new(user_segments_params)

    if UserSegments.exists?(name: UserSegments.name)
      render json: { error: "Segment already registered" }, status: :unprocessable_entity
    elsif user_segments.save
      render json: user_segments, status: :created
    else
      render json: user_segments.errors, status: :unprocessable_entity
    end
  end

  private

  def user_segments_params
    params.require(:user_segments).permit(:user_id, :segment_id)
  end
end
