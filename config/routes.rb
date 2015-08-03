Rails.application.routes.draw do
  resources :games
  resources :moves, only: [:create]
  devise_for :users
  resources :users, only: [:show, :index]

  root 'static_pages#home'
end
