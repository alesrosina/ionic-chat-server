Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  resources :users, only: [:show, :create] do
    resources :sent_messages, only: [:index, :create]
    resources :received_messages, only: [:index]
    resources :messages, only: [:index]
    resources :users, only: [:index]
    collection do
      get :search
    end
  end
end
