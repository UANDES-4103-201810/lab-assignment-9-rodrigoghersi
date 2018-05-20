Rails.application.routes.draw do
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :categories
  resources :actors
  resources :directors
  resources :person
  get "/person/new" , to: "person#create"
  post "/person/create" , to: "person#create"
  get "/movies/new" , to: "movies#create"
  post "/movies/create" , to: "movies#create"



  root "person#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
