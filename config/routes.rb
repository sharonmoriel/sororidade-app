Rails.application.routes.draw do
  root to: 'pages#home'

  resources :episodes

  get 'landingpage', to: 'landing#landingpage'
end
