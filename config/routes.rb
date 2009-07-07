ActionController::Routing::Routes.draw do |map|
  map.resources :restaurants
  map.resources :menus
#  map.resources :categories
  map.resources :dishes
  map.resources :menucategories
  map.resources :menus, :has_many => :categories
  map.resources :menus, :has_many => :menucategories
  map.resources :restaurants, :has_many => :menus
  map.resources :categories, :has_many => :dishes
  #  map.resources :menus, :collection => { :edit => :post }
  #map.resources :menus, :member =>  { :categories => :post }
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  #agregado
  map.root :controller => 'restaurants',:action => 'index'
end
