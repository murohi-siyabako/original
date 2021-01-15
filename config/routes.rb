Rails.application.routes.draw do
  devise_for :users
  root "news#index"
  resources :news do
    collection do
      get 'search'
    end
  end
end
