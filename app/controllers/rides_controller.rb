class RidesController < ApplicationController


  def create

    redirect_to user_path(session[:user_id])
  end
end
