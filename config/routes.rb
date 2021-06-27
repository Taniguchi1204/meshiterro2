Rails.application.routes.draw do
  get 'users/show'
  root "homes#top"
  devise_for :users
  resources :post_images, only:[:new,:create,:index,:show,:destroy] do
    resources :post_comments, only:[:create,:destroy]
    resource :favorites, only:[:create,:destroy]
  end
  resources :users, only:[:show,:edit,:update]
end
