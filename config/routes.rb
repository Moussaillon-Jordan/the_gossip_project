Rails.application.routes.draw do

  root 'gossips#index'
  resources :gossips do
    resources :commentaire
  end
  resources :author
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :welcome
  resources :city
  resources :session, only: [:new, :create, :destroy]
end
