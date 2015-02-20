Rails.application.routes.draw do
  devise_for :users
  root      'favorites#new'

  resources :locations

  resources :beers
end
