Rails.application.routes.draw do
  root 'application#home'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  delete '/logout' => 'sessions#destroy'
  get '/owners/new' => 'owners#new'
  post '/owners' => 'owners#create'
  resources :dogs
  resources :shelters
end
