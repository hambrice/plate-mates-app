class SearchController < ApplicationController
  def show
    search_params = JSON.parse(params[:id])
    @recipes = Recipe.search_results(search_params)
    render json: @recipes
  end
end
