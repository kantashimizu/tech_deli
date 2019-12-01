Rails.application.routes.draw do
  devise_for :users
  root to: "drinks#index"
  get "/orders/new/:id" ,to: "orders#new", as: "new_order"
  post "/orders/:id", to:"orders#create", as: "order" 
  get "/orders/show",to:"orders#show"
  post "/orders/:id/finish", to:"orders#finish"
end
