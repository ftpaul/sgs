Sgs::Application.routes.draw do

  resources :cursos
  resources :ano_lectivos

  root :to => "cursos#new"

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  resources :users
  resources :sessions
end
