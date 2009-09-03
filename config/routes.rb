ActionController::Routing::Routes.draw do |map|
  map.rubyamf_gateway 'rubyamf_gateway', :controller => 'rubyamf', :action => 'gateway'

  map.resources :restaurants
end
