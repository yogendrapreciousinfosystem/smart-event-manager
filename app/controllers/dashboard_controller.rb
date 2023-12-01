class DashboardController < ApplicationController
  before_action :current_account
  def index
    if current_account.nil?
      redirect_to new_account_session_path, notice: 'Please log in to access the Smart Evenr System.'
    end
    @events = Event.all
  end
end