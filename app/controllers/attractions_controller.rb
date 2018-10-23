class AttractionsController < ApplicationController

  def index
    binding.pry
    @attractions = Attraction.all
  end


  def show
    @attraction = Attraction.find(params[:id])
  end



end
