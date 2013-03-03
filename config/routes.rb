FinalProject::Application.routes.draw do

  root to: 'events#index'

  get "sign_in" => 'sessions#new', :as => :sign_in
  resources :users
  resources :locations
  resources :events

  post "sessions/create"
  get "sessions/destroy" => 'sessions#destroy', :as => :sign_out

end
