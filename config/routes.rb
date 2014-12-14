Rails.application.routes.draw do
  root 'store#index', as: 'store'

  # routes for products
  get    'products/' =>  'products#index',    as: :products

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

end
