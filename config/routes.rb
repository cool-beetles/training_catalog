Rails.application.routes.draw do
  resources :trainings

  resources :exercises, only: [:index]
  
  root "trainings#index"
end
