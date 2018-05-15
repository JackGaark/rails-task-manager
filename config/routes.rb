Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :tasks

  # CRUD

  # # CREATE. Get a form
  get "tasks/new", to: "tasks#new"

  # # CREATE a new restaurant
  post "tasks", to: "tasks#create"


  # # READ a indiviudal restaurant
  get "tasks/:id", to: "tasks#show", as: :task

  # # READ a list of tasks
  get "tasks", to: "tasks#index"


  # # UPDATE. Get a form
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task

  # # UPDATE
  patch "tasks/:id", to: "tasks#update"


  # # DESTROY a given restaurant
  delete "tasks/:id", to: "tasks#destroy", as: :delete_task
end
