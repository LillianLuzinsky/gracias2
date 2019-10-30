Rails.application.routes.draw do
  
  root 'pages#index'

  get 'journal' => 'pages#journal'

  get 'submitted_answers' => 'posts#submitted_answers'

  resources :posts

end
