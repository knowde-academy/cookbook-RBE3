module Api
  module V1
        class CommentsController < ApplicationController
            
            def create
            @recipe = Recipe.find(params[:id])
            @comment = @recipe.comments.create(comment_params)
            redirect_to recipe_path(@recipe)
            end
            
            def show
            render json: RecipeSerializer.new(@comment).to_h
            end
        
          private
            def comment_params
              params.require(:comment).permit(:author, :body, :recipe_id)
            end
        end
  end
end