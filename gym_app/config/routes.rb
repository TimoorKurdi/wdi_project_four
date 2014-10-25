Rails.application.routes.draw do

  get '/' => 'session#new'
  post '/session' => 'session#create'

  get '/sign-up' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'users#login'

  get '/users/:id' => 'users#show'
  put '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'
  delete '/session' =>'session#destroy'

end
