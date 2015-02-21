Rails.application.routes.draw do
  get 'favorites/new'

  get 'favorites/create'

  get 'favorites/destroy'

  devise_for :users
  root      'beers#index'

  resources :locations

  resources :beers
end
