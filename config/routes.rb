Rails.application.routes.draw do
  devise_for :users
  root to: 'static_page#top'
  get 'privacy_policy', to: 'static_page#privacy'
  get 'disclaimer', to: 'static_page#disclaimer'
  resources :users, only: :update
  get '/users/:nickname' => 'users#show', as: :users_show
  get '/users/:nickname/edit' => 'users#edit', as: :users_edit
  get '/users/:nickname/record' => 'users#record', as: :users_record
  resources :records
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
