Rails.application.routes.draw do
 get '/posts/mypage', to: "posts#mypage"
 post '/posts/:post_id' =>"comments#create"
delete '/posts/:post_id/comments/:id' =>"comments#destroy"
 root 'posts#index'
  get 'comments/create'
  get 'comments/destroy'
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
