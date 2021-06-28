Rails.application.routes.draw do
  devise_for :users, controllers: {
                       registrations: "users/registrations",
                     }
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  root "top#index"
  resources :user, only: %i(edit update)
  resources :list, only: %i(new create edit update destroy) do
    resources :card, expect: %i(index)
  end
end
