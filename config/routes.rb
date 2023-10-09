Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :users
  resources :posts
  root "users#login"
  post "authenticate_user" => "users#authenticate_user"
  get "logout"=>"users#logout"
end
