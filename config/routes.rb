Rails.application.routes.draw do
  devise_for :users
  root "top#index"
  resources :user, only: %i(edit update)
  resources :list, only: %i(new create edit update destroy) do
    resources :card, expect: %i(index)
  end
end
