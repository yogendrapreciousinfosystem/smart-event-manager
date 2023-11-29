class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :email, :full_phone_number, :country_code, :activated, :password, :password_confirmation, :gender, :date_of_birth, :age, :country_name, :role_id])
  # end

end
