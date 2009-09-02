class Restaurant
  def initialize(address = "", name = "", rating = 0, reviews = [])
    @address, @name, @rating, @reviews = address, name, rating, reviews
  end

  attr_reader :address, :name, :rating, :reviews

  def self.find_restaurants
    resp = call_yelp
    restaurants = resp["businesses"].map do |bus|
      Restaurant.new(
        build_address(bus),
        bus["name"],
        build_rating(bus["reviews"]),
        build_reviews(bus["reviews"]))
    end
    restaurants
  end

  private

  def self.call_yelp
    client = Yelp::Client.new
    req = Yelp::Review::Request::Location.new(
      :zipcode => "32839",
      :term => 'restaurants',
      :yws_id => ENV['YWSID'])
    client.search(req)
  end

  def self.build_address(bus)
    "#{bus["address1"]}, #{bus["city"]}, #{bus["state"]} #{bus["zip"]}"
  end
  
  def self.build_rating(reviews)
    (reviews.inject(0.0){ |s, r| s += r["rating"] } / reviews.length)
  end

  def self.build_reviews(reviews)
    reviews.inject([]){ |a, r| a << r["text_excerpt"] }
  end
    
end
