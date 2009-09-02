class RestaurantsController < ApplicationController
  respond_to :json, :xml

  def index
    @restaurants = Restaurant.find_restaurants
    respond_with(@restaurants)
  end

end
