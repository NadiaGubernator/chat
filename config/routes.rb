Rails.application.routes.draw do
  root       'home#index'

  devise_for :users
  
  resources :conversations, only: %i[create] do
    member do
      post :close
    end
  end
end
