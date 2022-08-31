Rails.application.routes.draw do
  resources :pages
  devise_for :users

  get 'welcome/index'
  root 'welcome#index'
  resources :articles

  resources :pages, only: :show

  resources :articles do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
