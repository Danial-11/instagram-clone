# frozen_string_literal: true

# routes
require 'sidekiq/web'
require 'sidekiq/cron/web'
Rails.application.routes.draw do
  devise_for :users
  resources :users do
    post :follow, to: 'users/follows#create', as: :follow
    delete :follow, to: 'users/follows#destroy', as: :unfollow
  end

  resources :posts do
    resources :photos, only: [:create]
    resources :likes, only: %i[create destroy], shallow: true
    resources :comments, shallow: true
  end
  mount ActionCable.server => '/cable'
  mount Sidekiq::Web => '/sidekiq'
  get '/search', to: 'users#search'
  get 'followers', to: 'users#followers'
  resources :stories
  resources :requests
  root 'posts#index'
end
