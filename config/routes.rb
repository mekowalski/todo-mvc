Rails.application.routes.draw do
  get 'items/create'
  root 'lists#index'

  resources :lists do
    resources :items
  end
end
