Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :users #creating all routes for users
resources :posts #creating all routes for posts
resources :ratings #creating all routes for ratings
resources :comments, only:[:create, :update, :destroy] #setting comment routes for just create/update/destroy


get "/login", to: "sessions#new", as: :login # creating the form for logging in
delete "/logout", to: "sessions#destroy", as: :logout # route for logging out
post "/login", to: "sessions#create" # created session for user after logging in
get "/signup", to: "users#new", as: :signup # route for signup page

post "/posts/:id", to: "posts#show" # route for API search

end
