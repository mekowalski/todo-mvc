Rails.application.routes.draw do
  root 'lists#index'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/auth/github/callback', to: 'sessions#create'
  #user is sent to github to verify then github needs to send them back to application

  resources :users, only: [:new, :create]

  resources :lists do
    resources :items
  end
end
