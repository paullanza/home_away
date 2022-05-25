Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  resources :events, only: [:index, :new, :create, :show] do
    # create a participation need the event to be created.
    resources :participations, only: [ :create ]
  end

  get '/events/my_events', to: 'events#my_events', as: :my_events
  resources :profiles, only: [ :show, :edit, :update ]

  get '/dashboard', to: 'dashboards#dashboard', as: :dashboard
end
