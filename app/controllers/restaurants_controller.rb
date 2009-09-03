class RestaurantsController < ApplicationController
  respond_to :json, :xml, :amf

  def index
    @restaurants = Restaurant.find_restaurants
    respond_with(@restaurants) do |format|
      format.json { render :json => @restaurants }
      format.amf { render :amf => @restaurants }
    end
  end

end
