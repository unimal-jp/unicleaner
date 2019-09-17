Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  root 'sessions#new'
  post '/', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/schedule', to: 'schedules#new'
  post '/schedule', to: 'schedules#create'
end
