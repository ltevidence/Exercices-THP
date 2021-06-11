Rails.application.routes.draw do
  get 'user/:id', to: 'user#show'
  get 'gossip/:id', to: 'gossip#show'
  get 'index', to: 'index#show'
  get 'welcome/:first_name', to: 'welcome#show'
  get 'contact', to: 'contact#show'
  get 'team', to: 'team#show'
end
