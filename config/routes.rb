Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :profiles, only: [ :show, :edit, :update ]
  resources :events, only: [:index]

end
