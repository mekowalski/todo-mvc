Rails.application.routes.draw do
  root 'lists#index'
  get 'items/create'

  resources :users

  resources :lists do
    resources :items
  end
end
