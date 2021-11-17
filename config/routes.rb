Rails.application.routes.draw do
  devise_for :users
  root to: 'static_page#top'
  get 'privacy_policy', to: 'static_page#privacy'
  get 'disclaimer', to: 'static_page#disclaimer'
  resources :users, only: [:edit, :update]
  get '/users/:nickname' => 'users#show', as: :pages_show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
