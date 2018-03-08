class RecipesController < ApplicationController

  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
  before_action :verify_creating_user, only: [:edit]

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    if params[:user_id]
      if params[:query] != nil
        current_user == User.find(params[:user_id]) ? @recipes = User.find(params[:user_id]).all_recipes.select {|s| s.name.downcase.include?(params[:query].downcase)} : @recipes = User.find(params[:user_id]).created_recipes.select {|s| s.name.downcase.include?(params[:query].downcase)}
      else
        current_user == User.find(params[:user_id]) ? @recipes = User.find(params[:user_id]).all_recipes : @recipes = User.find(params[:user_id]).created_recipes
      end
    elsif params[:query] != nil
      @recipes = Recipe.search(Recipe.all, params[:query])
    else

    @recipes = Recipe.all
    end
  end

  def new
    @recipe = Recipe.new
    10.times do
    @recipe.ingredients.build.recipe_ingredients.build
    end
  end

  def create
    @recipe = current_user.created_recipes.build(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      @recipe.errors.full_messages
      10.times do
      @recipe.ingredients.build
      end
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    (10 - @recipe.ingredients.count).times do
      @recipe.ingredients.build
      end
  end

  def update
    @recipe = Recipe.find(params[:id])
    authorize(@recipe)
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      @recipe.errors.full_messages
      (10 - @recipe.ingredients.count).times do
        @recipe.ingredients.build
        end
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    authorize(@recipe)
    @recipe.destroy
    flash[:alert] = "Your recipe has been deleted."
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :category, :prep_time, :cook_time, :instructions, :image, ingredients_attributes:[:name, recipe_ingredients:[:quantity]])
  end

  def require_login
    return head(:forbidden) unless current_user
  end

  def verify_creating_user
    return head(:forbidden) unless current_user == Recipe.find(params[:id]).user
  end
end
