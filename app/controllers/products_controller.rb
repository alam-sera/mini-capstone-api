class ProductsController < ApplicationController
  def show
    # number = params[:id]
    # individual_item = Product.find(number)
    # render json: individual_item.as_json(methods: [:friendly_created_at, :is_discounted?])
    @product = Product.find_by(params[:id])
    render "products/show"
  end

  def index
    products = Product.all
    render json: product.as_json
  end 

  def create
    product = Product.new(
    name: params[:name],
    price: params[:price],
    image_url: params[:image_url], 
    description: params[:description]
    )
    # if product.save
    #   render json: product.as_json
    # else 
    #   render json: {errors: product.errors.full_messages}
    # end 
  end 

  def update
    # locate product 
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.stock = params[:stock] || product.stock
    #save update
    product.save
    render json: product.as_json
    
  end

  def destroy
    # locate the right product
    product = Product.find(params[:id])
    # destroy said product 
    product.destroy 
    #message to indicate product destroyed 
    render json: {message: "Destroyed! :)"}
  end

end

