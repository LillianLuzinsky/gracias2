Rails.application.routes.draw do
  
  root 'pages#index'

  get 'journal' => 'pages#journal'

end
