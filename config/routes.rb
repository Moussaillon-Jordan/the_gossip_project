Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dynamic_page#welcome'

  get '/team', to: 'static_page#team'
  get '/contact', to: 'static_page#contact'

  get 'welcome/:first_name', to: 'dynamic_page#welcome'
  get '/:first_name', to: 'dynamic_page#welcome'
end
