Rails.application.routes.draw do


  # get 'users/show'　を消して『resources :users, only: [:show]』　を下記に追加。＊重複を避けるため
  devise_for :users
  root to: 'homes#top'
  
  #resources :post_images, only: [:new, :create, :index, :show, :destroy]を下記に変更
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    
    resources :post_comments, only: [:create, :destroy]
  end
  
  #ここ！
   # 以下の行のonly: []内にeditを追加
    # 以下の行のonly: []内にupdateを追加
  resources :users, only: [:show, :edit, :update]


end
