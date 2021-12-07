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

get 'user/:id', :to => 'users#user_details'
get 'intake/:id/personalDetails', :to => 'patients#personalDetails'
get 'intake/:id/insuranceDetails', :to => 'patients#insuranceDetails'
get 'intake/:id/demographicDetails', :to => 'patients#demographicDetails'
get 'intake/:id/currentVisitReason', :to => 'patients#currentVisitReason'
get 'intake/:id/blueButton', :to => 'patients#blueButton'

patch 'intake/:id/personalDetails', :to => 'patients#personalDetailsUpdate'
patch 'intake/:id/insuranceDetails', :to => 'patients#insuranceDetailsUpdate'
patch 'intake/:id/demographicDetails', :to => 'patients#demographicDetailsUpdate'
patch 'intake/:id/blueButton', :to => 'patients#blueButtonUpdate'

delete 'intake/:patient_id', :to => 'patients#destroy'
  resources :healthinsurances
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
