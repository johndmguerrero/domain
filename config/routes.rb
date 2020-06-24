Rails.application.routes.draw do

  root to: "registrants#index" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :domains
  resources :registrants
end
