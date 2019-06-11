Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :messages, only: [:index, :new, :create,:show]
  resources :ocr_iamges, only: [:index, :new, :create,:show]
  root to: 'messages#index'

end
