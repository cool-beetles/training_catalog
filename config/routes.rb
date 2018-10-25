Rails.application.routes.draw do
  get '/new' => 'trainings#new'
  post '/new' => 'trainings#create'
  resources :trainings

  root "trainings#index"
end
