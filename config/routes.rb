Rails.application.routes.draw do
  resources :profiles
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
# So Rails knows which controller and which action should serve the request for profiles
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
