Rails.application.routes.draw do
  root 'flights#flights'
  get '/flights', to: 'flights#flights'
  get '/flights/search', to: 'flights#flights'
  resources :bookings, only: [:new, :create, :show]
end
