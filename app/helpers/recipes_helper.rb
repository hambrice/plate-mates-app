module RecipesHelper
  def ingredient_list(recipe)
    recipe.recipe_ingredients.collect do |ing|
      ing.quantity + " " + ing.ingredient.name
    end
  end
end
