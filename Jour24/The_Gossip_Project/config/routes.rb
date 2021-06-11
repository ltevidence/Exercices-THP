Rails.application.routes.draw do
  get 'static_pages/team'
  get 'static_pages/contact', to: 'static_pages#contact'
  get '/static_pages/index', to: 'static_pages#index'
  get '/gossips/:gossip_id', to: 'gossips#gossip', as: 'gossip_gossip_id'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
