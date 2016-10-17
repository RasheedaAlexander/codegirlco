Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # creates seven different routes in your application, all mapping to the Posts controller
  resources :posts
  root to: 'posts#index'
end
