Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/trips" => "trips#index"
  get "/trips/:id" => "trips#show"
  post "/trips" => "trips#create"
  patch "/trips/:id" => "trips#update"
  delete "/trips/:id" => "trips#destroy"
  get "/places" => "places#index"
  get "/places/:id" => "places#show"
  post "/places" => "places#create"
  get "/trips/:trip_id/places" => "places#index_by_trip"
  # Defines the root path route ("/")
  # root "posts#index"
end
