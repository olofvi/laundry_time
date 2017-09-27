Rails.application.routes.draw do

  get 'laundry_room/index'

  root controller: :landing, action: :index
  resources :laundry_room
  devise_for :users
end