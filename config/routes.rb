 ActionController::Routing::Routes.draw do |map|
  map.resources :restaurants do |restaurant|
    restaurant.resources :menus do |menu|
      menu.resources :categories do |category|
        category.resources :dishes
      end
    end
  end
 map.resources :menucategories
  map.resources :menus
  map.resources :dishes
  map.resources :menucategories
  map.resources :menus, :has_many => :categories
  map.resources :menus, :has_many => :menucategories
  map.resources :categories, :has_many => :dishes
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => "restaurants",:action => "index"
end