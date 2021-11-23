Rails.application.routes.draw do
  devise_for :users
  root to: 'static_page#top'
  get 'privacy_policy', to: 'static_page#privacy'
  get 'disclaimer', to: 'static_page#disclaimer'
  resources :users, only: :update
  get '/users/:nickname' => 'users#show', as: :users_show
  get '/users/:nickname/edit' => 'users#edit', as: :users_edit
  get '/users/:nickname/record' => 'users#record', as: :users_record do
    collection do
      get 'search'
    end
  end
  get '/users/:nickname/records' => 'users#records', as: :users_records
  resources :records do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
