Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 get '/welcome', to: 'static_pages#welcome', as: 'welcome'
 get '/team', to: 'static_pages#team'
 get '/contact', to: 'static_pages#contact'
 get 'user/show', to: 'user#show'

end
