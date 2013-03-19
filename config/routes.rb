FinalProject::Application.routes.draw do

  post 'check_ins/create/:event_id' => 'check_ins#create', :as => :check_ins
  get 'users/check_out' => 'users#check_out', :as => :check_out
  post 'visibles/:user_id' => 'visibles#create', :as => :make_visible

  resources :favorites

  root to: 'events#index'

  get "sign_in" => 'sessions#new', :as => :sign_in
  resources :users
  resources :locations
  resources :events

  post "sessions/create"
  get "sessions/destroy" => 'sessions#destroy', :as => :sign_out

end
