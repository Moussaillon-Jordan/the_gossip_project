Rails.application.routes.draw do

  root 'welcome#index'
  resources :gossips, except: [:destroy]
  resources :author
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :welcome
  resources :city
end
