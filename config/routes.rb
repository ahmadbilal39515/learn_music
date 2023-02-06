Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resource :funnel

  get '/realmajik', to: 'funnel#realmajik'
  get '/test', to: 'funnel#email_squeeze'

  # Defines the root path route ("/")
  root 'public#index'
end
