Rails.application.routes.draw do
  # doorkeeper で root_path が必要なので仮で設定
  root :to => 'users#index'
  resources :user_sessions
  resources :users
  use_doorkeeper

  get '/me' => 'application#me'
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
