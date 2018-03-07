class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys:[:image, :first_name, :last_name, :email, :password, :current_password])
  end

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

  # <div align = "right">  <img src="<%= current_user.image %>" height="50">
  #    <details>
  #      <summary><strong><%= current_user.name %> </strong></summary>
  #   <%= link_to "Home", root_path %>
  #   <%= link_to "Browse Recipes", recipes_path %>
  #   <%= link_to "View Saved/Created Recipes", user_recipes_path(current_user) %>
  #   <%= link_to "Create New Recipe", new_recipe_path %>
  #   <%= link_to 'Edit Profile',edit_user_registration_path %>
  #   <%= link_to "Sign out", destroy_user_session_path, method: "delete" %>
  # </details></div>
end
