# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resource :funnel

  get '/realmagic', to: 'funnel#real_majik'
  get '/turquoiserings', to: 'funnel#email_squeeze'
  post '/create_checkout_session', to: 'funnel#create_checkout_session'

  # Defines the root path route ("/")
  root 'funnel#email_squeeze'
end
