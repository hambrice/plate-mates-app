class LikesController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    current_user.liked_recipes << @recipe
    flash[:alert] = "This recipe has been saved to your list!"
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    current_user.liked_recipes.delete(@recipe) if current_user.liked_recipes.include? (@recipe)
    flash[:alert] = "This recipe has been removed from your list!"
    redirect_to recipe_path(@recipe)
  end

end
