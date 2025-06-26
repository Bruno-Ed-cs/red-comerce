Rails.application.routes.draw do
  get "products", to: "products#index"
  post "products/create", to: "products#create"
  get "products/select/:id", to: "products#select"
  post "products/edit/:id", to: "products#edit"
  delete "products/delete/:id", to: "products#delete"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
