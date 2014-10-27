Rails.application.routes.draw do

  get '/' => 'session#new'
  post '/session' => 'session#create'

  get '/sign-up' => 'users#new'

  get '/users' => 'users#index'
  post '/users' => 'users#create'

  get '/login' => 'users#login'

  get '/users/:id' => 'users#show'
  put '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'
  delete '/session' =>'session#destroy'

  get '/users/:id/gyms' => 'gyms#show'
  # post '' => 'gyms#create'

  # get '/users/:id/gyms/results' => 'gyms#find'

end
