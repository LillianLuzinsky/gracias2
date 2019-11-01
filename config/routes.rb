Rails.application.routes.draw do
  
  get 'sessions/new'
  root :to => 'pages#index'

  get '/journal' => 'journal_entries#journal'
  get '/journal/history' => 'journal_entries#history'

  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :journal_entries

  # resources :books
  # GET books => books#index
  # GET books/:id => books#show
  # GET books/new => books#new // for showing the new form
  # GET books/:id/edit => books#edit // for showing the edit form
  # POST books => books#create // for creating a new book instance
  # DELETE books/:id books#destroy // for deleting a book by its id

end
