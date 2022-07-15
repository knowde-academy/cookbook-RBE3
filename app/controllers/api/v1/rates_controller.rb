class RatesController < ApplicationController
    def create
        @recipe = Recipe.find(params[:recipe_id])
        @rate = @recipe.rates.create(rate_params)
        redirect_to recipe_path(@recipe)
    end

    private
    
    def rate_params
        params.require(:rate).permit(:rating)
    end
end
