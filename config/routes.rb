Rails.application.routes.draw do
  get 'gossip_infos/gossip'
  get 'gossip_infos/author'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dynamic_page#welcome'
  get '/home/:first_name', to: 'dynamic_page#welcome'

  get 'welcome/:first_name', to: 'dynamic_page#welcome'

  get '/team', to: 'static_page#team'

  get '/contact', to: 'static_page#contact'

  get '/gossip/:id', to: 'gossip_infos#gossip'

  get '/author/:id', to: 'gossip_infos#author'

end
