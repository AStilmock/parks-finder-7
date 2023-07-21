Rails.application.routes.draw do
  root "welcome#index"

  resources :parks, only: %i[index]
end
