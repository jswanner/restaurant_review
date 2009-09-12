RAILS_GEM_VERSION = '3.0.pre' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "yelp"
  config.gem "builder"

  config.time_zone = 'UTC'
end
