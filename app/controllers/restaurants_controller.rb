class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.find_all
    respond_to do |format|
      format.xml
      format.json { render :json => @restaurants }
      format.amf { render :amf => @restaurants }
    end
  end

end
