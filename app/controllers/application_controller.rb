class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery prepend: true
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end

  before_filter :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name,:last_name,:email, :password, :password_confirmation) }
   devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name,:last_name,:email, :password, :password_confirmation,
   :current_password) }
 end


end
