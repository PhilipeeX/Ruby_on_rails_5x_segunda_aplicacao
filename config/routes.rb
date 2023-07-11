Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end

  devise_for :admins
  devise_for :users
  get '/admins/sign_out', to: 'admins_backoffice#destroy'
  get '/users/sign_out', to: 'users_backoffice#destroy'

  get 'bem-vindo', to: 'site/welcome#index'

  root to: 'site/welcome#index'

end
