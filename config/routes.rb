Bestbay::Application.routes.draw do

  resources :categories

  resources :line_items

  resources :bids

  get "auction/index"


  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :items do
    collection do
      get 'electronics'
      get 'laptop'
      get 'cellphone'
      get 'television'
    end

  end

  get "sessions/new"

  devise_for :user_devises do

    get 'user_devises', :to => 'welcome#homepage', :as => :user_root
     end






  get "welcome/homepage"
  get "welcome/FAQ"
  get "welcome/connect"
  get "welcome/feedback"
  get "welcome/orderstatus"
  get "welcome/returnpolicy"
  get "welcome/services"
  get "users/registration"
  post "users/registration"
  get "items/electronics"
  post "items/electronics"
  get "users/new"

  post "users/confirm"

  post "welcome/homepage"

  root :to => 'welcome#homepage'

  resources :users



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
