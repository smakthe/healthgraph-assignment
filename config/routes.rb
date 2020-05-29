Rails.application.routes.draw do
  get 'trash/index'
  post 'trash/trash'
  post 'trash/restore'
  resources :posts
  root "posts#index"
  post 'posts/:id', to: "posts#create_comment"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
