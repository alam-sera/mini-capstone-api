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
end

