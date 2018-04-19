class Recipe < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :comments
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
    #self.recipe_ingredients.clear
    ingredients_attributes.values.each do |attributes|
      unless attributes[:name].empty?
        name = sanitize_ingredient_name(attributes[:name])
        ingredient = Ingredient.find_by(name: name)
        ingredient = Ingredient.create(name: name) if ingredient == nil
          #binding.pry
          if self.persisted?
            join = RecipeIngredient.find_by(recipe_id: self.id, ingredient_id: ingredient.id)
            if join
              join.quantity = attributes[:recipe_ingredients_attributes]["0"][:quantity]
            else
              join = self.recipe_ingredients.build(ingredient_id: ingredient.id, quantity: attributes[:recipe_ingredients_attributes]["0"][:quantity])
            end
          else
            join = self.recipe_ingredients.build(ingredient_id: ingredient.id, quantity: attributes[:recipe_ingredients_attributes]["0"][:quantity])
          end
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

  def self.sort_results(sort_method, recipes)
    case sort_method
    when "Most Comments"
      recipes = recipes.sort_by{|a| a.comments.length}.reverse!
    when "Newest"
      recipes = recipes.sort_by{|a| a.created_at}.reverse!
    when "Oldest"
      recipes = recipes.sort_by{|a| a.created_at}
    when "Most Likes"
      recipes = recipes.sort_by{|a| a.likes.length}.reverse!
    end
    recipes
  end
  def self.search_results(search_params)
    if !search_params["categories"].empty?
      @recipes = self.none
      search_params["categories"].each do |category|
        @recipes += self.where(category: category.capitalize)
      end
    else
      @recipes = self.all
    end
      @recipes = self.search(@recipes, search_params["query"])
      @recipes = self.sort_results(search_params["sort"], @recipes)
      @recipes
  end
end
