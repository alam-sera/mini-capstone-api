class ProductsController < ApplicationController
  def first
    products = Product.all
    render json: products.as_json
  end 
end
