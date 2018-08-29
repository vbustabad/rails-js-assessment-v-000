root 'application#home'
get '/signup' => 'users#new'
post '/users' => 'users#create'
get '/login' => 'sessions#new'
post '/sessions' => 'sessions#create'
get '/logout' => 'sessions#destroy'
delete '/logout' => 'sessions#destroy'
resources :dogs
