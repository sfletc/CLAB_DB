ClabDb::Application.routes.draw do
  
  #get "oligo_up/oligo_up"
  #get "experiment_data/import"


  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :oligos, only: [:new, :create, :update, :destroy]
  resources :plasmids, only: [:new, :create, :update, :destroy]
  resources :seeds, only: [:new, :create, :update, :destroy]
  


  #resources :mynewdata, only: [:create, :destroy] 

  #resources :mynewdata do
  #  resources :experiment_data
  #end
  # resources :oligos do
  #  collection { post :import }
  #  root to: "pages#upload"
  # end
  
  root  'pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'pages#help',    via: 'get'
  match '/about',   to: 'pages#about',   via: 'get'
  match '/contact', to: 'pages#contact', via: 'get'
  match '/plasmids',  to: 'pages#plasmids',    via: 'get'
  match '/seeds', to: 'pages#seeds', via: 'get'
  match '/oligos', to: 'pages#oligos', via: 'get'
  
  resources :plasmids do
    get 'download', on: :member
  end
  
  

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
