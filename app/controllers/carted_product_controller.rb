class CartedProductController < ApplicationController
  before_action :authenticate_user

  def index 
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products.as_json
  end 


  def create
    carted_product = CartedProduct.new(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity],
    status: "carted"
    )
    if carted_product.save
      render json: carted_product
    else 
      render json: {errors: carted_product.errors.full_messages}, status: :unprocessable_entity 
    end 
  end 

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = removed
  end

 
end
