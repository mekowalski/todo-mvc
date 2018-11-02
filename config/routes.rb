Rails.application.routes.draw do
  root 'lists#index'
  get 'items/create'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'

  resources :users, only: [:new, :create]

  resources :lists do
    resources :items
  end
end
