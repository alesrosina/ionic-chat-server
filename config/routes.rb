Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  namespace :v1 do
    resources :users, only: [:show, :create] do
      resources :messages, only: [:index, :show]
      resources :users, only: [:index]
      collection do
        get :search
      end
    end

    resource :messages, only: [:create]

  end
end
