Rails.application.routes.draw do
  devise_for :members
  get "up" => "rails/health#show", as: :rails_health_check


  resources :posts, :only[:new, :create, :index]
  # Defines the root path route ("/")
  root to: "posts#index"
end
