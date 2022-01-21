Rails.application.routes.draw do
  resources :agent_contacts
  resources :contracts
  resources :realtors
  resources :reports
  resources :discounts
  resources :organizations
  resources :staff_members
  resources :inspectors
  resources :days
  resources :settings
  resources :agreements
  resources :templates
  resources :services
  resources :automation_saves
  resources :automation_descriptions
  resources :automation_headings
  resources :menus
  resources :top_agents
  resources :refral_resources
  resources :user_cards
  resources :countries
  resources :cities
  resources :zipcodes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login' => 'users#login'
  post '/check_existing_user' => 'users#check_existing_user'
end
