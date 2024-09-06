# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: %i[new] do
        resources :followings, only: %i[create destroy]
      end
      get 'register', to: 'users#new'
      root 'opinions#index'
    
      resources :opinions do
        resources :likes, only: %i[create destroy]
      end
    
      get 'followers', to: 'users#followers'
      get 'following', to: 'users#following'
      get 'discover', to: 'opinions#discover'
    
      # get 'login', to: 'sessions#new'
      # post 'login', to: 'sessions#create'
      # delete 'logout', to: 'sessions#destroy'
 
    end
   end
end
