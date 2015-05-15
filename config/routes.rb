Rails.application.routes.draw do
  root 'medicines#new'
  resources :medicines
  get 'new'=>'medicines#new'
  post 'new'=>'medicines#create'
  get'allitems' => 'medicines#index'
  get 'edit' => 'medicines#edit'
  
  resources :users
  get 'signup' => 'users#new'
  post'signup' => 'users#create'

  get 'sessions/new'



  get 'jsonall' => 'medicines#all'
  get 'jsonkind1' => 'medicines#kind1'
  get 'jsonkind2' => 'medicines#kind2'
  get 'jsonkind3' => 'medicines#kind3'
  get 'jsonkind4' => 'medicines#kind4'
  get 'jsonkind5' => 'medicines#kind5'
  get 'jsonkind6' => 'medicines#kind6'
  get 'jsonkind7' => 'medicines#kind7'
  get 'jsonkind8' => 'medicines#kind8'
  get 'jsonkind9' => 'medicines#kind9'
  get 'jsonkind10' => 'medicines#kind10'

  get'identify'=> 'users#identify'
  get'login'=> 'sessions#new'
  post'login'=> 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'wrong' =>'sessions#wrong'
  get 'blank' => 'sessions#blank'


  resources :orders
  get 'neworder'=>'orders#new'
  post 'neworder'=>'orders#create'
  get 'allorders'=>'orders#index'
  get 'myorder'=>'orders#myorder'
  get 'allordersjson' =>'orders#jsonindex'

  post 'test'=>'medicines#test'
  get 'test'=>'medicines#showtest'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
