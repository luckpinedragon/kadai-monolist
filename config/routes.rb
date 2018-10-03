Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:show, :new, :create]

  resources :items, only: [:show, :new]

  post 'create_want', to: 'ownerships#create_want'
  delete 'destroy_want', to: 'ownerships#destroy_want'
  post 'create_have', to: 'ownerships#create_have'
  delete 'destroy_have', to: 'ownerships#destroy_have'

  get 'rankings/want', to: 'rankings#want'
end