Rails.application.routes.draw do
  resources :sessions
  resources :patients
  resources :clients
  resources :users
  resources :health_histories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
