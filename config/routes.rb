Rails.application.routes.draw do
  
  get 'sessions/new'
  root :to => 'pages#index'

  get '/journal' => 'journal_entries#journal'
  get '/journal/new' => 'journal_entries#new'

  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :journal_entries

end
