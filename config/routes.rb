Rails.application.routes.draw do
  # get 'session/new'
  # get 'session/create'
  # get 'session/destroy'
  get "/login", to: "session#new", as: "login"
  post "/login", to: "session#create"
  resources :reservations
  resources :users
  resources :flights
  resources :planes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
