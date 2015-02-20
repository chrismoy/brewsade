Rails.application.routes.draw do
  devise_for :users
  root      'users#new'

  resources :locations

  resources :beers
end
