Rails.application.routes.draw do
  get 'carts/show'

  root 'pages#home'

  #Auth
  get  'auth/:provider/callback', to: 'sessions#create_with_omniauth', as: :login_omniauth
  get 'signout', to: "sessions#destroy", as: "signout"
  get 'auth/failure', to: "sessions#omniauth_failure"

  #resources
  resources :products
  resources :cart, only: [:show] do
    put 'add/:product', to: 'carts#add', as: :add_to
    put 'add/:product', to: 'carts#remove', as: :remove_from
  end
end
