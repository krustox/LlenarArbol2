Rails.application.routes.draw do
  resources :operations
  resources :transactions
  resources :products
  resources :segments
  resources :aggrupations
  resources :elements
  resources :subcomponents
  resources :components
  resources :sites
  resources :subservices
  resources :types
  resources :services
  resources :channels
  resources :enterprises
  resources :holdings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
