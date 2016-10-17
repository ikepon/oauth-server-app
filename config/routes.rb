Rails.application.routes.draw do
  # doorkeeper で root_path が必要なので仮で設定
  root :to => 'users#root'

  use_doorkeeper

  get '/me' => 'application#me'
end
