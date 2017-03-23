Rails.application.routes.draw do
  resources :cameras
  resources :images
  resources :fave_imgs
  resources :users
  resources :rover_manifests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
