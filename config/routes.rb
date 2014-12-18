Rails.application.routes.draw do
  root 'store#index', as: 'store'

  # routes for products

  get    'products/:id/who_bought' => 'products#who_bought', as: :who_bought_product

  get    'products/' =>  'products#index',    as: :products

  get 'products/men/' => 'products#men', as: :men

  get 'products/women' => 'products#women', as: :women

  get 'products/accessories' => 'products#accessories', as: :accessories

  post   'products/' =>   'products#create'

  get    'products/new' =>       'products#new', as: :new_product

  get    'products/:id' =>       'products#show',     as: :product

  get    'products/:id/edit' =>  'products#edit', as: :edit_product

  patch  'products/:id' =>       'products#update'

  delete 'products/:id' =>       'products#destroy', as: :delete

  # routes for store
  get 'store/:id' => 'store#show', as: :show_store

  # routes for carts

  get    'carts/' =>  'carts#index',    as: :carts

  post   'carts/' =>   'carts#create'

  get    'carts/new' =>       'carts#new', as: :new_cart

  get    'carts/:id' =>       'carts#show',     as: :cart

  get    'carts/:id/edit' =>  'carts#edit', as: :edit_cart

  patch  'carts/:id' =>       'carts#update'

  delete 'carts/:id' =>       'carts#destroy'

  # routes for line_items

  get    'line_items/' =>  'line_items#index',    as: :line_items

  post   'line_items/' =>   'line_items#create'

  get    'line_items/new' =>       'line_items#new', as: :new_line_item

  # get    'line_items/:id' =>       'line_items#show',     as: :line_item

  get    'line_items/:id/edit' =>  'line_items#edit', as: :edit_line_item

  patch  'line_items/:id' =>       'line_items#update'

  delete 'line_items/:id' =>       'line_items#destroy'

  # routes for orders

  get    'orders/' =>  'orders#index',    as: :orders

  post   'orders/' =>   'orders#create'

  get    'orders/new' =>       'orders#new', as: :new_order

  get    'orders/:id' =>       'orders#show',     as: :order

  get    'orders/:id/edit' =>  'orders#edit', as: :edit_order

  patch  'orders/:id' =>       'orders#update'

  delete 'orders/:id' =>       'orders#destroy'

  # routes for users

  get    'users/' =>  'users#index',    as: :users

  post   'users/' =>   'users#create'

  get    'users/new' =>       'users#new', as: :new_user

  get    'users/:id' =>       'users#show',     as: :user

  get    'users/:id/edit' =>  'users#edit', as: :edit_user

  patch  'users/:id' =>       'users#update'

  delete 'users/:id' =>       'users#destroy'

  # routes for sessions //new //create //destory

  get    'sessions/' =>  'sessions#index',    as: :sessions

   controller :sessions do
      get 'login' => :new
      post 'login' => :create
   end

   delete 'sessions/:id' =>       'sessions#destroy'




  # get 'orders/new' => 'orders#new', as: :new_order

end
