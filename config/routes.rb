Skimmatic2::Application.routes.draw do
  resources :tests
  
  root to: 'static_pages#home'
  
  match '/help',	to: 'static_pages#help'
  match '/about', 	to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  
  match '/tryme', to: 'tests#index'
  
  match '/test1pre', to: 'static_pages#test1pre'
  match '/test1post', to: 'static_pages#test1post'
  match '/test2pre', to: 'static_pages#test2pre'
  match '/test2post', to: 'static_pages#test2post'
  match '/test1qs', to: 'static_pages#test1qs'
  match '/test2qs', to: 'static_pages#test2qs'
  
  match 'acadorig', to: 'public/assets/academicprocrastinationoriginal-3149df5e7a4699ffb41d74272433b840.pdf'
  match 'acadpost', to: 'public/assets/academicprocrastination1stsentences-0a7bd044fc0863eeaf625278aab1dcab.pdf'
  match 'gopnikorig', to: 'public/assets/Gopnik Wellman original-e40c3a9d1c0c30f3f9829b0661c2199b.pdf'
  match 'gopnikpost', to: 'public/assets/Gopnik Wellman numbers - flipped-08d0f6a35b8a963893c611a91952fd67.pdf'
  

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
  # match ':controller(/:action(/:id))(.:format)'
end
