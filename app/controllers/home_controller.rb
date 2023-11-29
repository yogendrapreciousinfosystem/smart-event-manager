class HomeController < ApplicationController
  def index
    if current_account.nil?
      redirect_to new_account_session_path, notice: 'Please log in to access the Smart Evenr System.'
    end
  end
end