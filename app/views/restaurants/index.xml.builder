xml.instruct!
xml.restaurants do
  @restaurants.each do |restaurant|
    xml.restaurant do
      xml.address(restaurant.address)
      xml.name(restaurant.name)
      xml.rating(restaurant.rating)
      xml.reviews(restaurant.reviews)
    end
  end
end
