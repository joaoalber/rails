Rails.application.routes.draw do
  get 'application/index'

  resources :articles

  root 'application#index'
end
