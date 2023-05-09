class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
      @users = User.all
      render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
  end

  def create

    user = User.new(user_params)

    if User.exists?(email: user.email)
      render json: { error: "Email already registered" }, status: :unprocessable_entity
    elsif user.save
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :birth_date, :admission_date, :is_active, :sex, :last_sign_in_at)
  end

end
