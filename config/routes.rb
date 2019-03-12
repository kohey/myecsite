Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  #deviseによる新規ユーザ登録
  post 'savenew', to: 'users#savenew'
end
