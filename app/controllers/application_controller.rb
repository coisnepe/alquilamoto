class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

# Next 2 lines added by RP first-one for security, we ask log in to access most of app fonctionalities
#  and the second one to call the protected method below in order to allow user to update profile
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    # Comment RP: i didn'i added the email, so in theiry customer can't update it
    # devise_parameter_sanitizer.for(:account_update) { |u| u.permit( :first_name, :last_name, :phone_number, :date_birth, :date_driver_licence) }
    devise_parameter_sanitizer.for(:account_update) << :picture
    devise_parameter_sanitizer.for(:account_update) << :first_name
    devise_parameter_sanitizer.for(:account_update) << :last_name
    devise_parameter_sanitizer.for(:account_update) << :phone_number
    devise_parameter_sanitizer.for(:account_update) << :date_birth
    devise_parameter_sanitizer.for(:account_update) << :date_driver_licence
    devise_parameter_sanitizer.for(:account_update) << :bio
  end

end
