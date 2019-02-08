Rails.application.routes.draw do
  resources :apt_listings, constraints: ->(request){ !request.format.html? }
  devise_for :users

  get '/member/*path', to: 'pages#protected', constraints: ->(request){ request.format.html? }
  get '/member', to: 'pages#protected', constraints: ->(request){ request.format.html? }
  get '/guest', to: 'pages#unprotected', constraints: ->(request){ request.format.html? }
  get '/guest/*path', to: 'pages#protected', constraints: ->(request){ request.format.html? }
  root to: 'pages#unprotected'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
