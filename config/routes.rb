Rails.application.routes.draw do
  root 'tasks#index'
  devise_for :users
  resources :tasks
  post '/position_update', to: 'tasks#position_update'
  post '/size_update', to: 'tasks#size_update'
end
