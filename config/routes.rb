Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :schedules, only: [:new, :edit, :create, :update, :destroy]
  get '/calendar/:year/:month', to: 'calendar#index', as: 'calendar'

  root 'calendar#index'
end
