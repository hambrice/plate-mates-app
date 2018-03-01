class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :recipes
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
end
