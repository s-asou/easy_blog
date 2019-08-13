Rails.application.routes.draw do
  # frozen_string_literal: true
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
