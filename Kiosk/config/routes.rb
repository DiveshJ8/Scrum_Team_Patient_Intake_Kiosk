Rails.application.routes.draw do

get 'healthinsurance', to: 'healthinsurance#new'
post 'healthinsurances', to: 'healthinsurance#create'

  resources :sessions
  resources :patients
  resources :clients
  resources :users
  resources :health_histories
  resources :healthinsurances
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
