class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :recipe_id, :ingredient_id, :quantity
  belongs_to :recipe
  belongs_to :ingredient
end
