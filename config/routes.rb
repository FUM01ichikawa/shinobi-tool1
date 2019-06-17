Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :messages, only: [:index, :new, :create]
  get 'message/show', to: 'messages#show'
  resources :ocr_images
  root to: 'ocr_images#index'

end
