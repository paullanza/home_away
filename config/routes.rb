Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/events/my_events', to: 'events#my_events', as: :my_events
  resources :events, only: [:index, :new, :create, :show, :destroy] do
    # create a participation need the event to be created.
    # Jose: added the destroy method
    resources :participations, only: [ :create ]
  end

  resources :profiles, only: [ :show, :edit, :update ]
  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: :create
  end

  get '/dashboard', to: 'dashboards#dashboard', as: :dashboard

end
