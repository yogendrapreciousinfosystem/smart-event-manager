# frozen_string_literal: true

class Accounts::PasswordsController < Devise::PasswordsController
  before_action :require_no_authentication, only: [:new, :create]
  before_action :authenticate_account!, only: [:edit, :update]

  # GET /resource/password/new
  def new
    super
  end

  # POST /resource/password
  def create
    super
  end

  # GET /resource/password/edit?reset_password_token=abcdef
  def edit
    super
  end

  # PUT /resource/password
  def update
    super
  end

  # The path used after sending reset password instructions
  def after_sending_reset_password_instructions_path_for(resource_name)
    super(resource_name)
  end

  protected

  # Override the method to allow signed-in users to access the password reset functionality
  def assert_reset_token_passed
    super unless account_signed_in?
  end
end
