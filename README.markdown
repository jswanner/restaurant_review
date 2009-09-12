Rails application used for ORUG / Adogo meeting on 10 Sept 2009

# Prerequisites
Yelp Web Service ID, obtained here: [http://www.yelp.com/developers/](http://www.yelp.com/developers/)

Environment variable YWSID set to your Yelp Web Service ID

# Usage
script/server (starts webserver)

[http://localhost:3000/restaurants.xml](http://localhost:3000/restaurants.xml) (XML data)

[http://localhost:3000/restaurants.json](http://localhost:3000/restaurants.json) (JSON data)

[http://localhost:3000/rubyamf_gateway](http://localhost:3000/rubyamf_gateway) (amf data, need to set service to "RestaurantController" and method to "index")
