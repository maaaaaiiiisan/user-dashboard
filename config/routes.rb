Rails.application.routes.draw do
  resources :yogas, only:[:new, :create, :edit, :destroy, :update] do
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
end
