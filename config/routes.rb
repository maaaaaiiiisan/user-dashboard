Rails.application.routes.draw do
  root "yogas#index"
  resources :yogas do
    member do
      patch 'confirm'
    end
  end
end
