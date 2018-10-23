class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
  end


  def current_user
    User.find_by(session[:user_id])
  end 
end
