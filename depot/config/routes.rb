ActionController::Routing::Routes.draw do |map|

  map.resources :users
  map.resources :line_items
  map.resources :orders
#  map.resources :admin
  map.resources :products
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
