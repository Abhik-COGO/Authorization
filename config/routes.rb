#Issues: individual user token is getting the access of whole database

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, param: :_username
  
  # To check for login
  post '/auth/login', to: 'authentication#login'

  # by default not access
  get '/*a', to: 'application#not_found'

  #To get all the user data
  get '/users', to: "users#index"

  #To Create new User
  post '/users', to: 'users#create'

  #To Show unique user
  get '/users/:username', to: 'user#show'

  #To Update user
  put '/users/:username', to: 'user#update'

  #To delete user
  delete '/users/:username', to: 'user#destroy'
end
