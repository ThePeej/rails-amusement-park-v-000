Rails.application.routes.draw do
  get '/', to: 'static#index'
  get '/signin', to: 'static#signin'


end
