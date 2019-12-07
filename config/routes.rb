Rails.application.routes.draw do
  root "yogas#index"
  resources :yogas, only:[:new, :create, :edit, :destroy, :update] do
    collection do
      post :confirm
      post :new, path: :new, as: :new
    end
    member do
      patch :edit_confirm
    end
  end
end
