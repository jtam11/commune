Rails.application.routes.draw do

  root to: "talks#index"

  devise_for :users
  get '/users/:id', to: "users#show", as: "user"

  resources :talks
  get 'tags/:tag', to: "talks#index", as: "tag"

  resources :invites, only: [:create, :destroy]


  get "*path" => redirect("/")
end
