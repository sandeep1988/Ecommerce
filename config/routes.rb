Demo::Application.routes.draw do
  get 'admin' => 'admin#index'
controller :sessions do
get 'login' => :new
post 'login' => :create
delete 'logout' => :destroy
end
resources :users
resources :orders
resources :line_items
resources :carts
get "store/index"
resources :products do
get :who_bought, :on => :member
end
# ...
# You can have the root of your site routed with "root"
# just remember to delete public/index.html.
# root :to => "welcome#index"
root :to => 'store#index' , :as => 'store'
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
