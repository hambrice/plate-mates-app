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

    def recommended_recipes(amount)
      if self.all_recipes.count > 0
        Recipe.category_list.collect do |category|
          self.all_recipes.select {|r| r.category == category}
        end
      end
    end
end
