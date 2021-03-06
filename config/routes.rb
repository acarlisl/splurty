Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'quotes#index'
  resources :quotes

  # Add a route to our About page
  get 'about', to: 'quotes#about'

  # A page used for testing, not intended to be visible
  get 'test', to: 'quotes#test'
end
