Rails.application.routes.draw do
  resources :users
  resources :complications, except: [:index]
  resources :medications do 
    resources :complications, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end