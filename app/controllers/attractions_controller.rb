class AttractionsController < ApplicationController

  def index

    @attractions = Attraction.all
  end


  def show
    @attraction = Attraction.find(params[:id])
    @ride = @attraction.rides.build(user_id: params[:session][:user_id])
  end



end
