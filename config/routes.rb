Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :vehicles
  resources :locations
  resources :driveroutes
  resources :bookmarks
  resources :routepoints
  resources :trips
end
