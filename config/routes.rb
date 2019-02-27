Rails.application.routes.draw do
  mount ShopifyApp::Engine, at: '/'
  root 'embedded_app#index'
  get "proxy", to: "proxy#show"
  post "proxy", to: "proxy#update"
  get '*wildcard', to: 'embedded_app#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
