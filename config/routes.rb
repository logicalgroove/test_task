Rails.application.routes.draw do
  devise_for :admin_users

  namespace :admin do
    root to: 'train_stations#index'

    resources :train_stations
  end

  root to: 'train_stations#index'
end
