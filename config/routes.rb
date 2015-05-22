Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  root 'home#index'
  resources :posts do
    member do
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end
  end

  namespace :admin do

    resources :posts
    root 'home#index'

  end
end
