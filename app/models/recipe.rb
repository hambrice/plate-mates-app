class Recipe < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  validates :name, presence: true
  #accepts_nested_attributes_for :ingredients


  def sanitize_ingredient_name(name)
    name.split(" ").join.capitalize
  end

  def ingredients_attributes=(ingredients_attributes)
    #ingredient = Ingredient.find_by(name:)
    #self.ingredients.clear
    self.recipe_ingredients.clear
    ingredients_attributes.values.each do |attributes|
      unless attributes[:name].empty?
        name = sanitize_ingredient_name(attributes[:name])
        ingredient = Ingredient.find_by(name: name)
          ingredient = Ingredient.create(name: name) if ingredient == nil
          join = self.recipe_ingredients.build(ingredient_id: ingredient.id, quantity: attributes[:quantity])
          join.save
          #binding.pry
          #self.ingredients << ingredient
      end

    end
  end

  # def ingredients_attributes=(ingredients_attributes)
  #   ingredient = Ingredient.find_by(name:)
  #   self.ingredients.clear
  #   ingredients_attributes.values.each do |attributes|
  #     ingredient = Ingredient.find_by(name: attributes[:name])
  #     if ingredient
  #       ingredient.update(quantity: attributes[:quantity])
  #       self.ingredients << ingredient
  #     else
  #     self.ingredients.build(attributes) unless attributes[:name].empty?
  #     end
  #   end
  # end

  def self.category_array(category)
    self.all.select do |recipe|
      recipe.category == category
    end
  end

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

  def ingredient_list
    self.recipe_ingredients.collect do |ing|
      ing.ingredient.name + " - " + ing.quantity
    end
  end
end
