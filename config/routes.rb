Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', controllers: { registrations: "user_registrations" } }
  resources :users
  resources :orders, only: [:index, :show, :create, :destroy]
  root 'simple_pages#index'
  get 'contact_form/new'
  get 'contact_form/create'

  resources :products



  get 'simple_pages/index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/landing_page'
  root 'simple_pages#index'
  post 'simple_pages/thank_you'
  get  'simple_pages/users'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
