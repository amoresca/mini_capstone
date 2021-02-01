Rails.application.routes.draw do

  namespace :api do
    # Products
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    # Suppliers
    get "/suppliers" => "suppliers#index"
    post "/suppliers" => "suppliers#create"
    get "/suppliers/:id" => "suppliers#show"
    patch "/suppliers/:id" => "suppliers#update"
    delete "/suppliers/:id" => "suppliers#destroy"

    # Images
    get "/images" => "images#index"
    post "/images" => "images#create"
    get "/images/:id" => "images#show"

    # Users / Sessions
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    # Carted Products
    get "/carted_products" => "carted_products#index"
    post "/carted_products" => "carted_products#create"
    delete "/carted_products/:id" => "carted_products#destroy"

    # Orders
    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    get "/orders/:id" => "orders#show"
    delete "/orders/:id" => "orders#destroy"
  end

end
