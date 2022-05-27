Rails.application.routes.draw do
  resources :weekdays, only: :index
  resources :todos
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  resources :users, only: :create
  get '/todos/:todo_id/weekdays/:id', to: 'weekdays#add_to_weekday'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
