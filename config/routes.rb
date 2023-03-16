# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resource :funnel

  get '/realmagic', to: 'funnel#real_majik'
  get '/turquoiserings', to: 'funnel#email_squeeze'
  match :turquoiserings_confirmation, to: 'funnel#email_squeeze_submit', as: "turquoiserings_confirmation", via: [:post]

  post '/create_checkout_session', to: 'funnel#create_checkout_session'
  post '/confirmation', to: 'funnel#email_squeeze_confirmation'

  # Defines the root path route ("/")
  root 'funnel#email_squeeze'
end
