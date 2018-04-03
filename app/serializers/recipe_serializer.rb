class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :instructions, :prep_time, :cook_time, :category
  has_many :recipe_ingredients, through: :ingredients
  has_many :ingredients
  belongs_to :user
end
