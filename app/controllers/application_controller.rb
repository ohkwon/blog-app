class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def authenticate_user!
    if current_user

    else
      redirect_to '/login'
    end
  end

end
