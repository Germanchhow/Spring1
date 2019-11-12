Rails.application.routes.draw do
  devise_for :users
  root 'frontend/main#index'
  get 'backend', to: 'backend/main#index'

  namespace :backend do
    resources :users
    resources :web_configuration
    resources :logos
    resources :sliders
  end
end
