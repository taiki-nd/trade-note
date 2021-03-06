Rails.application.routes.draw do

  root to: 'static_page#top'
  get 'privacy_policy', to: 'static_page#privacy'
  get 'disclaimer', to: 'static_page#disclaimer'
  get 'lp', to: 'static_page#landingpage'

  devise_for :users

  resources :users, only: :update
  get '/users/:nickname' => 'users#show', as: :users_show
  get '/users/:nickname/edit' => 'users#edit', as: :users_edit
  get '/users/:nickname/record' => 'users#record', as: :users_record do
    collection do
      get 'search'
    end
  end
  get '/users/:nickname/post' => 'users#post', as: :users_post
  get '/users/:nickname/post_draft' => 'users#post_draft', as: :users_post_draft
  get '/users/:nickname/records' => 'users#records', as: :users_records
  get '/users/:nickname/search' => 'users#search', as: :users_search
  get '/users/:nickname/followings' => 'relationships#followings', as: 'followings'
  get '/users/:nickname/followers' => 'relationships#followers', as: 'followers' 
  resources :relationships, only: [:create, :destroy]

  resources :records do
    resources :comment_records
    collection do
      get 'search'
    end
  end

  resources :posts do
    resources :comment_posts
  end
  post 'posts/attach', to: 'posts#attach'
  
  resources :advertisements
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
