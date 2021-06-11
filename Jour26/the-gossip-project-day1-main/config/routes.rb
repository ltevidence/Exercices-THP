Rails.application.routes.draw do
  get '/team', to: 'the_gossip_project#team'
  get '/contact', to: 'the_gossip_project#contact'
  get '/welcome/:potineur', to: 'the_gossip_project#welcome'
  resources :gossips


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
