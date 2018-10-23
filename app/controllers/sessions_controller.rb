class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    session[:id] = @user.id 
    redirect_to user_path(@user)

  end



end
