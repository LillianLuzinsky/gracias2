Rails.application.routes.draw do
  
  get 'sessions/new'
  root 'pages#index'

  get 'journal' => 'posts#new'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :posts

end
