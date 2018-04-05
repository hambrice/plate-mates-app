class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :user, :created_at
  belongs_to :user, serializer: UserSerializer
  belongs_to :recipe
end
