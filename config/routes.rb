Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :stylist_listings, only: [:index, :show]
      resources :requests, only: [:index, :show, :new, :create]
      resources :availabilities, only: [:index, :show, :update]
      resources :services, only: [:index]
      resources :bookings, only: [:index, :show, :new, :create]
      resources :customer_bookings, only: [:index, :show]

      get "/stylist_listings/:stylist_listing_id/availabilities", to: 'stylist_listings#get_availabilities'
    end
  end
end







# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
