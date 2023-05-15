class TagsController < ApplicationController
  skip_before_action :verify_authenticity_token
    def index
        @tags = Tag.all
        render json: @tags
    end
  
    def show
      @tag = Tag.find(params[:id])
      render json: @tag
    end
  
    def updateusers Copy
      @tag = Tag.find(params[:id])
    end
  
    def create
      tag = Tag.new(tag_params)
      if Tag.exists?(name: tag.name)
        render json: { error: "Tag name already registered" }, status: :unprocessable_entity
      elsif tag.save
        render json: tag, status: :created
      else
        render json: tag.errors, status: :unprocessable_entity
      end
    end

    private

    def tag_params
      params.require(:tag).permit(:name)
    end
end
