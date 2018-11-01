Rails.application.routes.draw do
  root 'lists#index'
  get 'items/create'

  resources :users, only: [:new, :create]

  resources :lists do
    resources :items
  end
end
