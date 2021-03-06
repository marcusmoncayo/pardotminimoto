Rails.application.routes.draw do
  resources :users
  root 'home#index', as: 'root'

  get 'laps/new' => 'laps#new'
  post 'laps' => 'laps#create'
  get 'laps' => 'laps#index'
  get 'laps/unclaimed' => 'laps#unclaimed', as: 'unclaimed_laps'
  get 'laps/claim/:id' => 'laps#claim', as: 'claim_lap'
  post 'laps/claim/:id' => 'laps#claim_post', as: 'claim_lap_post'

  get 'leaderboard/bike/:bike_id' => 'leaderboard#index_for_bike', as: 'bike_leaderboard'
  get 'leaderboard' => 'leaderboard#index', as: 'leaderboard'
  get 'leaderboard/list' => 'leaderboard#list', as: 'leaderboard_list'

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
