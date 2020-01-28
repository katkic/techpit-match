Rails.application.routes.draw do
  root 'top#index'
  devise_for :users
  resources :users, only: %i[show]
end
