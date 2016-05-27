Rails.application.routes.draw do
  root to: "talks#index"

  devise_for :users
  resources :talks


  get "*path" => redirect("/")
end
