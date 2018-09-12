Rails.application.routes.draw do
  root 'application#home'
  resources :users
  resources :shelters
  resources :owners
  resources :dogs
  get '/signin' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  delete '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
