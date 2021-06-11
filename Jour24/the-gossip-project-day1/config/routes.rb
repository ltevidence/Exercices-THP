Rails.application.routes.draw do
  get '/', to: 'the_gossip_project#index',  as: 'index'
  get '/team', to: 'the_gossip_project#team'
  get '/contact', to: 'the_gossip_project#contact'
  get '/gossip/:gossip_id', to: 'the_gossip_project#gossip'
  get '/welcome/:potineur', to: 'the_gossip_project#welcome'
  get '/:user_id', to: 'the_gossip_project#user_id', as: 'user_id'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end