Rails.application.routes.draw do
  resources :games
  resources :moves, only: [:create]
  devise_for :users
  root 'static_pages#home'
end
