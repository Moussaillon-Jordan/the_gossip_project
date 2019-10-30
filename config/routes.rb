Rails.application.routes.draw do

  root 'welcome#index'
  resources :gossips, except: [:destroy]
  resources :author
  resources :team
  resources :contact
  resources :welcome

end
