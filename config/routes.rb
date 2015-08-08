Rails.application.routes.draw do
  root 'locations#index'

  resources :locations do
    resources :reviews
  end

  resources :likes, only: [:create]

  resources :users

  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  get 'locations/search/:name', to: 'locations#search'
  get 'find_amenities' => 'locations#find_amenities'
  get 'report_amenities' => 'locations#report_amenities'
end
