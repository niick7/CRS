class SessionsController < ActionController::Base
  # Define flash type used
  add_flash_types :info, :success, :danger, :warning

  def new
  end

  def login
    user = User.find_by(email: user_params[:email])
    if user && user.password == user_params[:password]
      session[:user_id] = user.id

      redirect_to root_path, success: 'Logged in successully!' and return
    end

    redirect_to login_path, danger: 'Invalid email or password.'
  end

  def logout
    session[:user_id] = nil

    redirect_to login_path, success: 'Logged out successully!'
  end

  private
    ###
    def user_params
      params.require(:user).permit(:email, :password)
    end
end