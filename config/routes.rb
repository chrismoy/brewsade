Rails.application.routes.draw do
  get 'favorites/new'

  get 'favorites/create'

  get 'favorites/destroy'

  devise_for :users
  root      'users#new'

  resources :locations

  resources :beers
end
