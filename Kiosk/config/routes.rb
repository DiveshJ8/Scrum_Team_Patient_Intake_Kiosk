Rails.application.routes.draw do

get 'healthinsurance', to: 'healthinsurance#new'
post 'healthinsurances', to: 'healthinsurance#create'
  
  get '/mainapp/:id', to: "kioskpages#mainapp"
  get '/mainapp', to: "kioskpages#mainapp"
  
  get '/signup', to: "kioskpages#signup"
  get "/signin", to: "kioskpages#signin"

  get '/login', to: "kioskqueries#login"
  get '/login', to: "kioskqueries#logout"
  
  resources :sessions
  resources :patients
  resources :clients
  resources :users
  resources :health_histories
  resources :healthinsurances
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
