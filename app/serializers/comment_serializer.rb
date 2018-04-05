class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :user
  belongs_to :user
  #belongs_to :recipe
end
