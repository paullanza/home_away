Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:index, :new, :create, :show] do
    # create a participation need the event to be created.
    resources :participations, only: [ :create ]
  end
  resources :profiles, only: [ :show, :edit, :update ]
end
