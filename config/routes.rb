Rails.application.routes.draw do
  root 'lists#index'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  # get 'items/create'

  resources :users, only: [:new, :create]

  resources :lists do
    resources :items
  end
end
