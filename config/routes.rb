Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'dashboards#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :garages do
    resources :parking_spaces, only: [:new, :create]
  end
  resources :parking_spaces, only: [:index, :show, :edit, :update, :destroy]
  resources :clients do
    resources :invoices, only: [:new, :create]
  end
  resources :invoices
  resources :dashboards, only: [:index]
end
