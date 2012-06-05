Shouter::Application.routes.draw do
  root to: "welcome#index"
  get "search" => "shout_searches#show"
  resources :users, only: [:show] do
    post "follow" => "following_relationships#create"
  end

  resource :dashboard, only: [:show]
  resources :text_media, only: [:create]
  resources :photo_media, only: [:create]
end
