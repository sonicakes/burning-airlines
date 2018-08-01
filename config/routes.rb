Rails.application.routes.draw do
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  resources :reservations
  resources :users
  resources :flights
  resources :planes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
