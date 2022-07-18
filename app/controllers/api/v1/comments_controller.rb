module Api
  module V1
    class CommentsController < ApplicationController
      
      def index
        render json: { data: ActiveModel::SerializableResource.new(Comment.all, each_serializer: RecipeSerializer) }
      end
      
      def show
        render json: RecipeSerializer.new(@comment).to_h
      end
      
      def create
        @recipe = Recipe.find(params[:recipe_id])
        @comment = @recipe.comments.create(comment_params)
        if @comment.save
          render json: @comment
        else
          render json: { errors: @comment.errors.messages }, status: :unprocessable_entity
        end
      end
      
      private
      
      def comment_params
        params.require(:comment).permit(%i[ author body ])
      end
      
      
    end
  end
end
