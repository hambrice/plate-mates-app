class Recipe < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  validates :name, presence: true
  validates :instructions, presence: true
  validates :category, presence: true
  validates :prep_time, presence: true
  validates :cook_time, presence: true
  validate :image_must_be_an_image_file_type

  def image_must_be_an_image_file_type
    if !image.include?(".jpg") && !image.include?(".png") && !image.include?(".jpeg")
      errors.add(:image, "must be a .png, .jpeg, or .jpg file type")
    end
  end

  def sanitize_ingredient_name(name)
    name.split(" ").join(" ").downcase
  end

  def ingredients_attributes=(ingredients_attributes)
    self.recipe_ingredients.clear
    ingredients_attributes.values.each do |attributes|
      unless attributes[:name].empty?
        name = sanitize_ingredient_name(attributes[:name])
        ingredient = Ingredient.find_by(name: name)
          ingredient = Ingredient.create(name: name) if ingredient == nil
          join = self.recipe_ingredients.build(ingredient_id: ingredient.id, quantity: attributes[:recipe_ingredients][:quantity])
          join.save
      end

    end
  end

   def self.search(recipe_array, query)
     recipe_array.select {|s| s.name.downcase.include?(query.downcase)}
   end

  def self.recently_created(amount)
    self.last(amount)
  end

  def self.category_list
    ["Cake","Frozen", "Cookie", "Pie", "Candy", "Pastry", "Other"]
  end

  def ingredient_list
    self.recipe_ingredients.collect do |ing|
      ing.quantity + " " + ing.ingredient.name
    end
  end
end
