xml.instruct!
xml.restaurants do
  @restaurants.each do |restaurant|
    xml.restaurant do
      xml.address(restaurant.address)
      xml.name(restaurant.name)
      xml.rating(restaurant.rating)
      xml.reviews do
        restaurant.reviews.each do |review|
          xml.review(review)
        end
      end
    end
  end
end
