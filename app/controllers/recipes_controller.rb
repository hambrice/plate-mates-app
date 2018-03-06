class RecipesController < ApplicationController

  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    if params[:user_id]
      @recipes = User.find(params[:user_id]).created_recipes
  elsif params[:query] != nil
      @recipes = Recipe.all.select {|s| s.name.downcase.include?(params[:query].downcase)}
    else
    #@categories = ["Cake","Frozen", "Cookie", "Pie", "Candy", "Pastry", "Other"]

    @recipes = Recipe.all
    end
  end

  def new
    @categories = ["Cake","Frozen", "Cookie", "Pie", "Candy", "Pastry", "Other"]
    @recipe = Recipe.new
    10.times do
    @recipe.ingredients.build
    end
  end

  def create
    #binding.pry
    @recipe = current_user.recipes.build(recipe_params)
    binding.pry
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def edit
    @categories = ["Cake","Frozen", "Cookie", "Pie", "Candy", "Pastry", "Other"]
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
    params.require(:recipe).permit(:name, :category, :prep_time, :cook_time, :instructions, ingredients_attributes:[:name, :quantity])
  end

  def require_login
    return head(:forbidden) unless current_user
  end
end
