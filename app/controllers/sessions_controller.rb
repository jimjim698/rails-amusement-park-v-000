class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_name(name:params[:user][:name])
    binding.pry 

  end



end
