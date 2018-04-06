class CategoriesController < ApplicationController
  def show
    cat = params[:id]
    categories = cat.split("&")
    @recipes = Recipe.none
    categories.each do |category|
      @recipes += Recipe.where(category: category.capitalize)
    end
    render json: @recipes
  end
end
