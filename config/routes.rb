FinalProject::Application.routes.draw do


  post 'check_ins/create/:event_id' => 'check_ins#create', :as => :check_ins
  resources :check_ins


  root to: 'events#index'

  get "sign_in" => 'sessions#new', :as => :sign_in
  resources :users
  resources :locations
  resources :events

  post "sessions/create"
  get "sessions/destroy" => 'sessions#destroy', :as => :sign_out

end
