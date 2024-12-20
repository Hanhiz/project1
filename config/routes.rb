require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  resources :tours
  resources :bookings do
    collection do
      get :get_tour_packages
    end
  end
  resources :tour_packages
  resources :tour_schedules
  resources :vehicles
  resources :vehicle_schedules
  resources :payments
  resources :reviews
  resources :customer_preferences
  resources :notifications

end
