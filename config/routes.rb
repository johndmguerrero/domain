Rails.application.routes.draw do

  devise_for :users
  root to: "registrants#index" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :domains
  resources :registrants

  post "/payment/create" => 'payments#create'
  post "/payment/execute" => 'payments#execute'
end
