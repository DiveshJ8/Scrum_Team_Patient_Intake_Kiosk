Rails.application.routes.draw do
  resources :sessions
  resources :patients
  resources :clients
  resources :users
  resources :health_histories

get 'user/:id', :to => 'users#user_details'
get 'intake/:id/personalDetails', :to => 'patients#personalDetails'
get 'intake/:id/insuranceDetails', :to => 'patients#insuranceDetails'
get 'intake/:id/demographicDetails', :to => 'patients#demographicDetails'
get 'intake/:id/blueButton', :to => 'patients#blueButton'

patch 'intake/:id/personalDetails', :to => 'patients#personalDetailsUpdate'
patch 'intake/:id/insuranceDetails', :to => 'patients#insuranceDetailsUpdate'
patch 'intake/:id/demographicDetails', :to => 'patients#demographicDetailsUpdate'
patch 'intake/:id/blueButton', :to => 'patients#blueButtonUpdate'

delete 'intake/:patient_id', :to => 'patients#destroy'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
