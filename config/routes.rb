  Rails.application.routes.draw do
  root      'beers#index'

  devise_for :users

  resources :locations

  resources :beers

  resource :favorites,       only: [:new, :create, :destroy]

  resources :beer_matches,   only: [:create, :destroy]
end
