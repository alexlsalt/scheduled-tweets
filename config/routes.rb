Rails.application.routes.draw do
  # GET / about
  get "about-us", to: "about#index", as: :about

  # GET / contact
  get "contact", to: "contact#index"

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  # GET / signup
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  root to: "main#index"
end
