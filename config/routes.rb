Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  root 'home#index'
  resources :posts do
    member do
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end
    resources :comments
  end

  namespace :admin do

    resources :posts do
      resources :comments
    end
    root 'home#index'

  end
end
