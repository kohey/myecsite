Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  #商品の登録
  get '/products/new', to: 'products#new'
  post '/products/new', to: 'products#create'
end
