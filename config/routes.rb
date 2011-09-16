Sourcery::Application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#create", :as => "login"
  get "signup" => "users#new", :as => "signup"
  get "secret" => "home#secret", :as => "secret"

  resources :users
  resources :sessions

  root :to => "home#index"
end
