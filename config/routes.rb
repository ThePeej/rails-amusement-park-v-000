Rails.application.routes.draw do
  get '/', to: 'static#index'
  get '/signin', to: 'static#signin'
  post '/login', to: 'static#login'

  resources :users
  resources :attractions
  resources :rides
end
