Rails.application.routes.draw do
  devise_for :users
  root to: "drinks#index"
  resources :orders, only: [:new,:create]
end
