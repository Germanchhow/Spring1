Rails.application.routes.draw do
  root 'frontend/main#index'
  get 'backend', to: 'backend/main#index'
  namespace :backend do
    resources :products
    resources :categories, except: [:show]
    resources :tags
  end
end
