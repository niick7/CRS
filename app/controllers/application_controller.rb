class ApplicationController < ActionController::Base
  before_action :authenticate!

  # Define flash type used
  add_flash_types :info, :success, :danger, :warning

  # To use these methods in views
  helper_method :current_user

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id].present?
  end

  private
    def authenticate!
      redirect_to login_path, warning: 'Unauthorized!' and return if session[:user_id].blank?
    end

    def authenticate_admin!
      redirect_to login_path, warning: 'Unauthorized!' and return if session[:user_id].blank? || !is_admin?
    end

    def is_admin?
      current_user.admin?
    end
end
