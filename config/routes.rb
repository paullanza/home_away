Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  resources :events, only: [:index, :new, :create, :show]
  resources :profiles, only: [ :show, :edit, :update ]
<<<<<<< HEAD
  resources :events, only: [:index]
=======
>>>>>>> b27dd03919ff214af61d249e72a151d569d75f2c
end
