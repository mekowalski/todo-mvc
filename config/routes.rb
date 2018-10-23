Rails.application.routes.draw do
  get 'items/create'
  root 'lists#index'

  resources :lists do
    resources :items
  end
  patch '/lists/:list_id/items/:id', to: 'items#update'

end
