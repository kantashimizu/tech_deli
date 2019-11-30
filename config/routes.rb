Rails.application.routes.draw do
  devise_for :users
  root to: "drinks#index"
  get "/orders/new/:id" ,to: "orders#new", as: "new_order"
  get "/orders/:id", to:"orders#create", as: "order" 
end
