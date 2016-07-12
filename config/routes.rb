Rails.application.routes.draw do

  resources :urlmaps
  root 'urlmaps#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
