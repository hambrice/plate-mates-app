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
end
