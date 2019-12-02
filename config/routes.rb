Rails.application.routes.draw do
  root "yogas#index"
  resources :yogas, only:[:new, :create, :edit, :destroy] do
    collection do
      post :confirm
      post :new, path: :new, as: :new
    end
  end
end
