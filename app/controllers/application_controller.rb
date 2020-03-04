class ApplicationController < ActionController::API

    def search_recipes
        request = RecipesApiRequest.new(params)
        results = request.get_recipes
        render json: results
    end

    def get_recipe
        request = GetRecipe.new(params[:id])
        results = request.get_recipe
        render json: results
    end
end
