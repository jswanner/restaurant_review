class RestaurantsController < ApplicationController
  respond_to :json, :xml

  def index
    @restaurants = Restaurant.find_all
    respond_with(@restaurants)
  end

end
