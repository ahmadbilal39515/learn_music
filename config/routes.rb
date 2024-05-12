# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resource :course
  get '/course_dashboard', to: 'course#index'
  get "/course/:id(/:lesson_id)", to: "course#show"


  resource :funnel
  get '/ways_of_the_guitar_diagrams', to: 'funnel#ways_of_the_guitar_email_squeeze'
  match :ways_of_the_guitar_email_squeeze_submit, to: 'funnel#ways_of_the_guitar_email_squeeze_submit', as: 'ways_of_the_guitar_email_squeeze_submit', via: [:post]
  get '/ways_of_the_guitar', to: 'funnel#ways_of_the_guitar', as: 'ways_of_the_guitar'


  get '/realmajik', to: 'funnel#real_majik'
  get '/turquoiserings', to: 'funnel#lesson'
  match :turquoiserings_confirmation, to: 'funnel#email_squeeze_submit', as: 'turquoiserings_confirmation', via: [:post]
  post '/create_checkout_session', to: 'funnel#create_checkout_session'
  get '/real_majik_purchased', to: 'funnel#real_majik_purchased'
  post '/confirmation', to: 'funnel#email_squeeze_confirmation'

  # Defines the root path route ("/")
  root 'home#main'
  # root 'funnel#real_majik'
end
