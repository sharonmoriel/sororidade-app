Rails.application.routes.draw do
  root to: 'landing#index'

  # temporary commented becuase is not used
  # resources :episodes

  # resources :landing, only: [:index, :create]

  # get 'landingpage', to: 'landing#index'

  # get 'landingpage_new', to: 'landing#new'

  # post 'landingpage', to: 'landing#create'
end
