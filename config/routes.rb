Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
      resources :stylist_listings, only: [:index]
      resources :requests, only: [:index]
      resources :availabilities, only: [:index]

    end
  end
end







# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
