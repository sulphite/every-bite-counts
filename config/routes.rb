Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  # Defines the root path route ("/")
  # root "articles#index"v
  resources :bookings do
    resources :reviews
  end

  resources :donuts do
    resources :bookings
  end
end
