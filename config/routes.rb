 
Rails.application.routes.draw do
 resources :users,except: %i[new]
 get "register",to: "users#new"
 root "sessions#new"

 get "login",to: "sessions#new"
 post "login",to: "sessions#create"
 delete "logout",to:"sessions#destroy" 
 end
