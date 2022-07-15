module Api
  module V1
        class RatesController < ApplicationController
            def create
                #z guide
                @recipe = Recipe.find(params[:recipe_id])
                @rate = @recipe.rates.create(rate_params)
                #z recipes_controller
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