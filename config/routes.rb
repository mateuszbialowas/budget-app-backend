# frozen_string_literal: true

# == Route Map
#

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root redirect to youtube
  root to: redirect('https://www.youtube.com/watch?v=dQw4w9WgXcQ')
end
