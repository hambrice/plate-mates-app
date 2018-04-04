class CommentsController < ApplicationController
  def create
    @comment = @post.comments.build(comments_params)
  end

  private
  def comments_params
    require(:comment).permit(:text)
  end
end
