Rails.application.routes.draw do
  get '/', to: 'static#index'
  get '/signin', to: 'static#signin'

  resource :users
  resource :attractions

end
