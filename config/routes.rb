Shouter::Application.routes.draw do
  root to: "welcome#index"
  resource :dashboard, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  resources :shouts, only: [:show]
  resources :users, only: [:show] do
    resources :following_relationships, only: [:create]
  end
end
