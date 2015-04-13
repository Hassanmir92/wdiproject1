Rails.application.routes.draw do
  resources :games
  devise_for :users
  root 'static_pages#home'
end
