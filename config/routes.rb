Rails.application.routes.draw do
  devise_for :users
  root :to => 'home#index'
  get 'home/index'

  get 'requests/index'

  get 'requests/show'

  get 'requests/new'

  get 'requests/edit'
#allows one to many relationship
  resources :patients do
    resources :requests
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
