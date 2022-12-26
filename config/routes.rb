Rails.application.routes.draw do
  get "/products/:id" => "products#show"
  get "/products" => "products#index"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

# # ###SUPPLIER ROUTE
#   get "/supplier" => "supplier#index"
#   get "/supplier/:id" => "supplier#show"

# # # ###IMAGES ROUTE
#   get "/images" => "images#index"
#   get "/images/:id" => "images#show"
#   post "/images" => "images/create"
#   patch "/images/:id" => "images/update"
#   delete "images/:id" => "images/destroy"

###USER CREATE
  post "/users" => "users#create"

### LOG IN
  post "/sessions" => "sessions#create"

### ORDER CREATE
  post "/orders" => "orders#create"
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"

### Carted product
  post "/carted_product" => "carted_product#create"
  get "/carted_product" => "carted_product#index"
  delete "/carted_product/:id" => "carted_product#destroy"
end

