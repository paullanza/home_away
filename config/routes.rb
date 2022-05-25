Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/events/my_events', to: 'events#my_events', as: :my_events
  resources :events, only: [:index, :new, :create, :show]
  resources :profiles, only: [ :show, :edit, :update ]

  get '/dashboard', to: 'dashboards#dashboard', as: :dashboard
end
