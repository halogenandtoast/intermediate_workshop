Shouter::Application.routes.draw do
  root to: "welcome#index"
  resource :dashboard, only: [:show]
end
