Rails.application.routes.draw do
  devise_for :members do
    get "/members/sign_out" => "devise/sessions#destroy"
  end
  get "up" => "rails/health#show", as: :rails_health_check


  resources :posts
  # Defines the root path route ("/")
  root to: "posts#index"
end
