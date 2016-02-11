Rails.application.routes.draw do

  resources :users
  resources :attractions
  get '/signin' => 'sessions#new'
  get '/users/new' => 'users#new'
  post '/logout' => 'sessions#destroy'
  root 'welcome#home'

end
