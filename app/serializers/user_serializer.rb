class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :image
  has_many :recipes
  has_many :comments
end
