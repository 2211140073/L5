Rails.application.routes.draw do
  get 'users/index'
  get 'tweets/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  
  #root 'users#index'
  resources :users
  resources :tweets
  root 'top#main'
  get 'top/main'
  post 'top/login'
  get 'top/error'
  get 'top/logout'
  get 'top/new'
  post 'top/create'
end
