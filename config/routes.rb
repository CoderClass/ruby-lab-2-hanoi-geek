Rails.application.routes.draw do
  root 'welcome#index'
  resources :users

  resources :sessions
  get 'login', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy', as: 'signout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
