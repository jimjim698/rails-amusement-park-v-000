class AttractionsController < ApplicationController

  def index

    @attractions = Attraction.all
  end


  def show
    @attraction = Attraction.find(params[:id])
    @ride = @attraction.rides.build(user_id: session[:user_id])
  end


  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)
    @attraction.save
  end


  private

  def attraction_params
    params.require(:attraction).require(:name, :happiness_rating, :nausea_rating, :min_height, :tickets)
  end

end
