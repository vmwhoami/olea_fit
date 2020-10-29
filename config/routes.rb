Rails.application.routes.draw do
 resources :users,except: %i[new] do

   resources :followings,only: [:create,:destroy]
   
 end
 get "register",to: "users#new"
 root "opinions#index"

 resources :opinions
  get "followers",to: "users#followers"
  get "following",to: "users#following"
  get "discover",to: "opinions#discover"

 get "login",to: "sessions#new"
 post "login",to: "sessions#create"
 delete "logout",to:"sessions#destroy" 
 end
