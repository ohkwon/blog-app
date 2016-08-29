Rails.application.routes.draw do

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

  get '/posts/index', to: 'posts#index'
  get '/posts', to: 'posts#index'
  get '/', to: 'posts#index'
  get '/posts/new', to: 'posts#new'
  post '/posts', to: 'posts#create'

end
