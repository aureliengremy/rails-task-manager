Rails.application.routes.draw do
  get '/', to: 'tasks#index'

  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: :task

  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  delete '/tasks/:id', to: 'tasks#destroy'

# get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
# post "/restaurants", to: "restaurants#create", as: :restaurants

# get "/restaurants", to: "restaurants#index"
# get "/restaurants/:id", to: "restaurants#show", as: :restaurant

# get "/restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
# patch "/restaurants/:id", to: "restaurants#update"

# delete "/restaurants/:id", to: "restaurants#destroy"
end
