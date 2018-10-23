Rails.application.routes.draw do

  #get 'users/new'
  #get 'users/create'
  resources :users
  resources :attractions
  root 'application#home'
  get '/signin'=> 'sessions#new'
  post '/login'=> 'sessions#create'
  delete '/logout'=> 'sessions#destroy'

end
