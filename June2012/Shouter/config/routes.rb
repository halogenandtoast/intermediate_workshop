Shouter::Application.routes.draw do
  root to: "welcome#index"
  resource :dashboard, only: [:show]
  resources :text_media, only: [:create]
  resources :photo_media, only: [:create]
end
