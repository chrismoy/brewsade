  Rails.application.routes.draw do

  resources :notifications, :only => [:create, :destroy]

  get 'notifications/destroy'

  root      'locations#index'

  devise_for :users

  resources :locations

  resources :beers

  resources :favorites,      only: [:new, :create, :destroy]

  resources :beer_matches,   only: [:create]
end
