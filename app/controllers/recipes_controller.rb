class RecipesController < ApplicationController

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @categories = ["Cake","Frozen", "Cookie", "Pie", "Candy", "Pastry", "Other"]

    @recipes = Recipe.all
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
    @recipe = Recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :category, :prep_time, :cook_time, :instructions, ingredients_attributes:[:name, :quantity])
  end
end
