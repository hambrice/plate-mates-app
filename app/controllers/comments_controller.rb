class CommentsController < ApplicationController
  def create
    #binding.pry
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.create(comments_params)
    #binding.pry
    render json: @comment
  end

  private
  def comments_params
    params.require(:comment).permit(:text, :user_id)
  end
end
