# frozen_string_literal: true

Rails.application.routes.draw do
  resources :movies
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  resources :movies, only: %i[index show update]

  get '/movies' => 'movies#index'
  get '/movies/:id' => 'movies#show'
  delete '/movies/:id' => 'movies#destroy'
  patch '/movies/:id' => 'movies#update'
  post '/movies' => 'movies#create'
end
