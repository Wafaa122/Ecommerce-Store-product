Rails.application.routes.draw do
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :products
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  root 'simple_pages#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
