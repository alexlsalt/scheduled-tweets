Rails.application.routes.draw do
  # GET / about
  get "about-us", to: "about#index", as: :about

  # GET / contact
  get "contact", to: "contact#index"

  root to: "main#index"
end
