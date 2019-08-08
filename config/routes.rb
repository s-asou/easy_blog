Rails.application.routes.draw do
  # frozen_string_literal: true
  get 'welcome/index'

  resources :articles

  root 'welcome#index'
end
