Rails.application.routes.draw do
  root 'lists#index'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/auth/github/callback', to: 'sessions#create'

  resources :users, only: [:new, :create]

  resources :lists do
    resources :items
  end
end
