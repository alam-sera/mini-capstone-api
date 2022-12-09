Rails.application.routes.draw do
### Individual items route
  get "/products/:id" => "products#show"

### all products route
  get "/products" => "products#index"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
end

