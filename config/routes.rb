Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  root 'home#index'
  resources :posts

  namespace :admin do

    resources :posts
    root 'home#index'

  end
end
