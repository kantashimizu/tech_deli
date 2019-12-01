class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :owner
  protect_from_forgery with: :null_session
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  def owner
    @users = User.all
    @owner = @users[0]
  end
end
