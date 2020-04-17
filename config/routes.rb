Rails.application.routes.draw do
  resources :clothes
  resources :users
  resources :carts
  get "/signup", to: "users#new", as: "signup"
  get "/login", to: "login#new"
  post "/login", to: "login#verify"
  delete '/login', to: "login#destroy", as: "logout"
end 
