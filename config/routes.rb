Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :messages
  resources :ocr_images
  root to: 'ocr_images#index'

end
