Rails.application.routes.draw do
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :categories
  resources :actors
  resources :directors
  get "/persons/new" , to: "persons#new"
  post "/persons/create" , to: "persons#new"
  root "person#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
