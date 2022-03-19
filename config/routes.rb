# frozen_string_literal: true

# == Route Map
#

Rails.application.routes.draw do
  # constraints for users. Access only from localhost
  # 89.161.57.196
  # constraints(ip: /127\.0\.0\.1$/) do
  constraints(ip: /89\.161\.57\.196$/) do
    get 'secrets', to: 'secrets#index'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root redirect to youtube
  root to: redirect('https://www.youtube.com/watch?v=dQw4w9WgXcQ')
end
