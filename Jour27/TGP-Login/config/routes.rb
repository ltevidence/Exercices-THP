Rails.application.routes.draw do
  root to:'the_gossip_project#welcome'
  get '/team', to: 'the_gossip_project#team'
  get '/contact', to: 'the_gossip_project#contact'
  get '/welcome/:potineur', to: 'the_gossip_project#welcome'
  get '/welcome', to: 'the_gossip_project#welcome'
  resources :gossips
  resources :users
  resources :tags
  resources :cities
  resources :sessions, only: [:new,:create,:destroy]

  get '/signup',  :to => 'users#new'
  get '/signin',  :to => 'sessions#new'
  get '/signout', :to => 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
