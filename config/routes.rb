Rails.application.routes.draw do
  root 'flights#index'
  get 'flights' => 'flights#index'
  resources :bookings
end
