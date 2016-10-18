Rails.application.routes.draw do

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :products do
    resources :comments
    post 'payments/create'
  end
  resources :users
  resources :orders, only: [:index, :show, :create, :destroy]

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  get 'static_pages/landing_page'

  post 'static_pages/thank_you'

  get 'products/index'

  # You can have the root of your site routed with "root"
  root 'static_pages#landing_page'

  mount ActionCable.server => '/cable'

end
