# frozen_string_literal: true

Rails.application.routes.draw do
  root 'dashboard#show'

  devise_for :users

  resources :generators, only: %i[index show new create edit update] do
    resources :columns, only: %i[new create]
  end

  resources :columns, only: %i[show edit update] do
    resources :options, only: %i[new create]
  end

  resources :options, only: %i[show edit update]

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :subscriptions, only: [:create]
      resources :generators, only: %i[index show] do
        resources :scenarios, only: %i[show create new update]
        resources :columns, only: [] do
          resources :scenarios, only: [:new]
        end
      end
    end
  end
end
