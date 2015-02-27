  Rails.application.routes.draw do

  resources :notifications, :only => [:create, :destroy]

  root      'locations#index'

  devise_for :users, controllers: {
    registrations: "users/registrations"
  }

  resources :locations

  resources :beers

  resources :favorites,      only: [:new, :create, :destroy]

  resources :beer_matches,   only: [:create]
end
