Rails.application.routes.draw do

  #get 'users/new'
  #get 'users/create'
  resources :users
  root 'application#home'
  get '/signin'=> 'sessions#new'

end
