class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  end



  def user_params
    params.require(:user).permit(:name,:height,:happiness,:nausea,:tickets,:password)
  end 
end
