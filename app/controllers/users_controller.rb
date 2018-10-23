

class UsersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login only:[:new]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end



  def user_params
    params.require(:user).permit(:name,:height,:happiness,:nausea,:tickets,:password)
  end



  private

  def require_login
    if !current_user
      redirect_to new_user_path
    end
  end
end
