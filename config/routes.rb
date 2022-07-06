Rails.application.routes.draw do
  resources :lists
  resources :posts
  devise_for :users
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
