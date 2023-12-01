# frozen_string_literal: true

class Accounts::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  before_action :authenticate_account!

  def new
    super
  end

  def create
    super
  end

  def edit
    super
  end

  def update
    @account = current_account
    if @account.update(account_update_params)
      redirect_to accounts_show_path(@account), notice: 'Account was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    super
  end

  def show
    @account = current_account
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :email, :full_phone_number, :country_code, :activated, :password, :password_confirmation, :gender, :date_of_birth, :age, :country_name, :role_id, :current_password])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  private

  def sign_up_params
    params.require(:account).permit(:full_name, :email, :full_phone_number, :country_code, :activated, :password, :password_confirmation, :gender, :date_of_birth, :age, :country_name, :role_id )
  end

  def account_update_params
    params.require(:account).permit(:full_name, :email, :full_phone_number, :country_code, :activated, :gender, :date_of_birth, :age, :country_name, :role_id )
  end
end
