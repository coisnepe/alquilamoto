Rails.application.routes.draw do

# Note RP: resources: user don't needed because devise manage user routes.
# resources: bookings without nesting not needed because we'll need the bike id in the url
# so we only need the resources:bookings that is nested in bikes
# bookings nested in users are not needed because we only want to show the bookings
# of the current user, and we cang get his id doin current_user, so dont needed to pass it
# in the url

  devise_for :users

  get 'top', to: "restaurants#top"
  root to: "pages#home"



  # Routes for customer navigation
  resources :users, only: :show
  resources :bookings, only: :index #added by rp thursday night
  resources :bikes, only: [:index, :show]  do
    resources :bookings, only: [:new, :create, :show]
  end

# Routes for owner navigation => see his bikes, see bookins for his bikes, see the bookings he sent to other owners
namespace :account do
  resources :bikes
  resources :bookings do
    collection do
      get 'owner_index', to: "bookings#owner_index"
      get 'renter_index', to: "bookings#renter_index"
    end
  end
end


# tryon to validate booking:
resources :bookings do
    member do
        get :flop
    end
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
