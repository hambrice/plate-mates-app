class SiteController < ApplicationController
  def index
    if current_user != nil
      redirect_to home_path
    end
  end

  def home
    @user = current_user
    @new_recipes = Recipe.first(3)
    @recommended_recipes = current_user.recommended_recipes(3)
  end

  # def show
  #   @user = User.find(params[:id])
  # end
end
