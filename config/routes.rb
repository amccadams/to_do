ToDo::Application.routes.draw do
 root to: "lists#index"
 resources :lists, only: [:index, :new, :create]
 resources :tasks, only: [:index, :new, :create]
end
