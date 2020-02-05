Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'pages#home'
  resources :yogas, only:[:index, :new, :create, :edit, :destroy, :update] do
    collection do
      post :create_confirm
    end
    member do
      patch :edit_confirm
    end
  end
  resources :lessons, only:[:index, :new, :create, :edit, :update, :destroy] do
    collection do
      post :create_confirm
    end
    member do
      patch :edit_confirm
    end
  end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
