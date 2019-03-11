Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :figures
  get "/profile", to: "profile#show"
  get "/dashboard", to: "dashboard#view"
  
  resources :brands, only: [:show], param: :name, :controller => "pages"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
