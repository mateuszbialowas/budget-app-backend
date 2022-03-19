# frozen_string_literal: true

# == Route Map

require 'sidekiq/web'
Sidekiq::Web.use ActionDispatch::Cookies
Sidekiq::Web.use Rails.application.config.session_store, Rails.application.config.session_options

Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq"

  # constraints for users. Access only from localhost
  # 89.161.57.196
  # constraints(ip: /127\.0\.0\.1$/) do
  constraints(ip: /89\.161\.57\.196$/) do
    get 'secrets', to: 'secrets#index'
  end

  root to: redirect('https://www.youtube.com/watch?v=dQw4w9WgXcQ')
end
