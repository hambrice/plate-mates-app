class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user == current_user
      render json: @user.all_recipes
    else
      render json: @user.created_recipes
    end
  end
end
