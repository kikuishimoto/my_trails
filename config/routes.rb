Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :comments
  resources :trails
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
