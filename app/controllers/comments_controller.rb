class CommentsController < ApplicationController
  def create
    #binding.pry
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.create(comments_params)
    render json: @comment
  end

  def index
    @recipe = Recipe.find(params[:recipe_id])
    render json: @recipe.comments
  end

  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end

  private
  def comments_params
    params.require(:comment).permit(:text, :user_id)
  end
end
