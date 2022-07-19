module Api
  module V1
    class RatesController < ApplicationController
      before_action :authenticate_user!, :only => [:create]
      def create
        @recipe = Recipe.find(params[:recipe_id])
        @rate = @recipe.rates.create(rate_params)
        @rate.user_id = current_user.id
        
        if @rate.save
          render json: @recipe
        else
          render json: { errors: @recipe.errors.messages }, status: :unprocessable_entity
        end
      end
  
      private
      
      def rate_params
          params.require(:rate).permit(:rating)
      end
    end
  end
end
