Rails.application.routes.draw do
  resources :countries
  resources :cities
  resources :zipcodes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login' => 'users#login'
end
