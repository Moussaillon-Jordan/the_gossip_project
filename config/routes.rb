Rails.application.routes.draw do

  root 'gossips#index'
  resources :gossips, except: [:destroy]
  resources :author
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :welcome
  resources :city
  resources :session, only: [:new, :create, :destroy]
end
