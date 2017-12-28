Rails.application.routes.draw do
  root       'home#index'

  mount ActionCable.server => '/cable'
  
  devise_for :users

  resources :conversations, only: %i[create] do
    member do
      post :close
    end
  end
end
