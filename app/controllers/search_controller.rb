class SearchController < ApplicationController
  def show
    search = JSON.parse(params[:id])
    #categories = cat.split("&")
    @recipes = Recipe.none
    search["categories"].each do |category|
      @recipes += Recipe.where(category: category.capitalize)
    end
      @recipes = Recipe.search(@recipes, search["query"])
    case search["sort"]
    when "Most Comments"
      @recipes = @recipes.sort_by{|a| a.comments.length}.reverse!
    when "Newest"
      @recipes = @recipes.sort_by{|a| a.created_at}.reverse!
    when "Oldest"
      @recipes = @recipes.sort_by{|a| a.created_at}
    when "Most Likes"
      @recipes = @recipes.sort_by{|a| a.likes.length}.reverse!
    end
      #binding.pry
    render json: @recipes
  end
end
