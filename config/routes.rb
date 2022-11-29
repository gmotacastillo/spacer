Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :garages do
    resources :parking_spaces, only: [:new, :create]
  end
  resources :parking_spaces, only: [:show, :edit, :update, :destroy]
  resources :clients
end
