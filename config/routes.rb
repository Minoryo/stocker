Rails.application.routes.draw do
  get 'products', to: 'products#index'

  get 'products/show'

  get 'products/new'

  post 'products/regist'

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
