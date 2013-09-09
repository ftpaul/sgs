Sgs::Application.routes.draw do

  resources :socios do
  	collection { post :import }
    collection { post :search, to: 'socios#index' }
  end


  resources :cursos
  resources :ano_lectivos

  root :to => "socios#index"

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  resources :users
  resources :sessions
end
