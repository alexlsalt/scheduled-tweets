Rails.application.routes.draw do
  # GET / about
  get "about-us", to: "about#index", as: :about

  # GET / contact
  get "contact", to: "contact#index"

  # GET / signup
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  root to: "main#index"
end
