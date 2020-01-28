Rails.application.routes.draw do
  root 'top#index'
  devise_for :users
  resources :users, only: %i[index show]
  resources :reactions, only: %i[create]
  resources :matching, only: %i[index]
end
