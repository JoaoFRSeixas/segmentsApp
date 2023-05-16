class SegmentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @segments = Segment.all
        render json: @segments
    end
  
    def show
      @segments = Segment.find(params[:id])
      render json: @segments
    end
  
    def update
      @segments = Segment.find(params[:id])
    end
  
    def create
  
      segments = Segment.new(segments_params)
  
      if Segment.exists?(name: Segment.name)
        render json: { error: "Segment already registered" }, status: :unprocessable_entity
      elsif segments.save
        render json: segments, status: :created
      else
        render json: segments.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def segments_params
      params.require(:segments).permit(:name)
    end
  
end
