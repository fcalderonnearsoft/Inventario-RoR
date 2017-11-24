Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :equipments
  resources :locations
  resources :equipment_in_locations
  root 'equipments#index'
end
