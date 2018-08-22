Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  resources :users, only: [:index, :new, :show, :create]
  root 'users#index'
end
