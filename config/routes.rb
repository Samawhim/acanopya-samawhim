Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :trips, only: [:new, :create, :show, :update, :index, :edit, :destroy] do
    resources :flats, only: [:index, :show]
    resources :restaurants, only: [:index, :show]
    resources :activities, only: [:index, :show]
  end

  resources :flats, only: [] do
    resources :flats_bookings, only: [:create]
  end
  resources :flats_bookings, only: [] do
    resources :flat_reviews, only: [:create]
  end

  resources :restaurants, only: [] do
    resources :restaurants_bookings, only: [:create]
  end
  resources :restaurants_bookings, only: [] do
    resources :restaurant_reviews, only: [:create]
  end

  resources :activities, only: [] do
    resources :activities_bookings, only: [:create]
  end
  resources :activities_bookings, only: [] do
    resources :activity_reviews, only: [:create]
  end
end
