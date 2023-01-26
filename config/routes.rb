Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resource :public

  get '/realmajik', to: 'public#realmajik'

  # Defines the root path route ("/")
  root "public#index"
end
