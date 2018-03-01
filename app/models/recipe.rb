class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def add_ingredient(name, quantity)
    ingredient = Ingredient.find_by(name: name)
    if ingredient
      recipe_ingredient = self.recipe_ingredients.create(ingredient_id: ingredient.id, quantity: quantity)
    else
      ingredient = Ingredient.create(name: name)
      recipe_ingredient = self.recipe_ingredients.create(ingredient_id: ingredient.id, quantity: quantity)
    end
      recipe_ingredient
    end

  def self.ingredient_list
    self.recipe_ingredients.collect do |ing|
      ing.ingredient.name + "-" + ing.quantity
    end
  end
end
