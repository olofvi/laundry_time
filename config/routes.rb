Rails.application.routes.draw do

  root controller: :landing, action: :index


  resources :laundry_room, path: '/laundry_room'
end
