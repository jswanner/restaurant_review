class Restaurant
  def initialize(address = "", name = "", rating = 0, reviews = [])
    @address, @name, @rating, @reviews = address, name, rating, reviews
  end

  attr_reader :address, :name, :rating, :reviews

  def self.find_restaurants
    client = Yelp::Client.new
    req = Yelp::Review::Request::Location.new(
      :zipcode => "32839",
      :term => 'restaurants',
      :yws_id => ENV['YWSID'])
    resp = client.search(req)
    restaurants = resp["businesses"].map do |bus|
      addr = build_address(bus)
      rating = (bus["reviews"].inject(0.0){ |s, r| s += r["rating"] } / bus["reviews"].length)
      reviews = bus["reviews"].inject([]){ |a, r| a << r["text_excerpt"] }
      Restaurant.new(addr, bus["name"], rating, reviews)
    end
  end

  private

  def self.build_address(bus)
    "#{bus["address1"]} #{bus["city"]}, #{bus["state"]} #{bus["zip"]}"
  end
    
end
