Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # CRUD
  # C
  get '/tasks/new', to: 'tasks#new'
  post '/tasks/', to: 'tasks#create'

  # R
  get '/tasks', to: 'tasks#index' #read all
  get '/tasks/:id', to: 'tasks#show', as: :task #read one
  # U
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_tasks
  patch '/tasks/:id', to: 'tasks#update'
  # D
  delete "tasks/:id", to: "tasks#destroy"
end
