Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :subjects, only: [:index, :show]
      resources :generators, only: [:index, :show] do
        resources :scenarios, only: [:show, :create, :new]
        resources :columns, only: [] do
          resources :scenarios, only: [:new]
        end
      end
    end
  end
end
