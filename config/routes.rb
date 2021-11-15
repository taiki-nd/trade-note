Rails.application.routes.draw do
  root to: 'static_page#top'
  get 'privacy_policy', to: 'static_page#privacy'
  get 'disclaimer', to: 'static_page#disclaimer'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
