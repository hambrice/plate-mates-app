class Comment < ApplicationRecord
  belongs_to :recipe
  belongs_to :user
  def time_created
    self.created_at.strftime("%m/%d/%Y %l:%M%P")
  end
end
