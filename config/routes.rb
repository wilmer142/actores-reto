Rails.application.routes.draw do
  #get '/actors/', to: 'actors#index'
  #get ''

  resources :actors, only: [:index, :new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
