Shouter::Application.routes.draw do
  root to: "welcome#index"
  resource :dashboard, only: [:show]
  resources :shouts, only: [:create, :show]
  resources :users, only: [:show]
end
