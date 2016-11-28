class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :blah, if: :devise_controller?
 # ^Makes it so the users can only the sandwich pages if they are currently logged in.

  def blah
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name])
  end 

end
