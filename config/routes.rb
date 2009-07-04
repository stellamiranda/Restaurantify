ActionController::Routing::Routes.draw do |map|
  map.resources :restaurants
  map.resources :menus
  map.resources :categories
  map.resources :dishes
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
