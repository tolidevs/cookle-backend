class ApplicationController < ActionController::API

    def search_recipes
        request = RecipesApiRequest.new(params[:search_string])
        results = request.get_recipes
        render json: results
    end

    def get_recipe
        request = RecipesApiRequest.new(params[:id])
        results = request.get_recipes
        render json: results
    end
end
