RbiSt::Application.routes.draw do

  resources :users

  post 'sign_up', :to => "users#create"
  get 'sign_up', :to => "users#new"

  post 'login', :to => "sessions#create"
  get 'login', :to => "sessions#new"
  delete 'logout', :to => "sessions#destroy"

  resources :links

  root :to => 'welcome#index'

  match '*id', :to => 'links#show'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
