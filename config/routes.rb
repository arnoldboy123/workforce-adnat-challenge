Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :organisations, only: [:new, :create, :edit, :update] do
    member do
      get :join, :leave
    end
    resources :shifts, only: [:index, :new, :create, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
