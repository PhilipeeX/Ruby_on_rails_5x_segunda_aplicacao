Rails.application.routes.draw do
  namespace :profiles_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  devise_for :profiles
  devise_for :admins
  get 'welcome/index'
  get 'bem-vindo', to: 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
