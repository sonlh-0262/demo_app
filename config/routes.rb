Rails.application.routes.draw do
  resources :microposts
  resources :users do
    resources :microposts
  end
  get 'static_pages/help'
  namespace :search do
    resources :users, only: :index
  end
  namespace :export_csv do
    resources :users, only: :create
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
