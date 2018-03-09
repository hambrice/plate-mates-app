class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :created_recipes, class_name: "Recipe"
  has_many :likes
  has_many :liked_recipes, through: :likes, source: :recipe
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.first_name = auth.info.name.split(" ").first
        user.last_name = auth.info.name.split(" ").last
        user.email = auth.info.email
        user.image = auth.info.image
        user.password = Devise.friendly_token[0,20]
      end
    end

    def name
      self.first_name + " " + self.last_name
    end

    def all_recipes
      self.created_recipes + self.liked_recipes
    end

    def favorite_category
        hash = {}
        Recipe.category_list.each do |category|
          hash[category] = 0
          self.all_recipes.each {|r| hash[category] += 1 if r.category == category}
          #binding.pry
        end
        favorite_category = hash.sort_by{|category, amount| amount}.last[0]
    end

    def recommended_recipes(quantity)
      if self.all_recipes.count > 0
        array = []
        quantity.times do
          array << Recipe.all.shuffle.detect do |recipe|
            recipe.category == self.favorite_category && !array.include?(recipe) && !self.all_recipes.include?(recipe)
            #binding.pry
          end
        end
      end
      array.delete_if{|x| x == nil} if array != nil
      #binding.pry
    end

    def user_index(id)
      user = User.find(id)
      if self == user
        user.all_recipes
      else
        user.created_recipes
      end
    end

end
