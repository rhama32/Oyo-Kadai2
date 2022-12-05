Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followers'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'home/about' => 'homes#about' , as: 'about'
  resources :users, only: [:show, :index, :edit, :update]
  resources :books, only: [:new, :create, :index, :show, :destroy] do
  resources :book_comments, only: [:create, :destroy]
   resource :favorites, only: [:create, :destroy]
  end
  resources :users do
   resource :relationships, only: [:create, :destroy]
   get 'followings' => 'relationships#followings', as: 'followings'
   get 'followers' => 'relationships#followers',  as: 'followers'
  end
  get 'search' => "searches#search"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
