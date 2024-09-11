# frozen_string_literal: true

Rails.application.routes.draw do
  root to: redirect('/api/v1/opinions')
  namespace :api do
    namespace :v1 do
      # User Registration Route
      post '/register', to: 'users#register'

      # User-related routes
      resources :users, except: %i[new] do
        resources :followings, only: %i[create destroy]
      end

      # Opinion-related routes
      resources :opinions do
        resources :likes, only: %i[create destroy]
      end

      # Additional user routes
      get 'followers', to: 'users#followers'
      get 'following', to: 'users#following'
      get 'discover', to: 'opinions#discover'

      # Session routes for login/logout
      post 'login', to: 'sessions#create'
      delete 'logout', to: 'sessions#destroy'
    end
  end
end

