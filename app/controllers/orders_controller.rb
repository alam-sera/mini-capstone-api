class OrdersController < ApplicationController
  before_action :authenticate_user
  
  # def index 
  #   orders = current_user.order
  #   render json: orders
  # end

  def create 
    if current_user
      carted_products = current_user.carted_products.where(status: "carted")
      subtotal = carted_products.map { |carted_product| carted_product.product.price * carted_product.quantity }
      tax = 0.09 * subtotal
      total = subtotal + tax 


      # product = Product.find_by(id: params[:product_id])
      # subtotal = params[:quantity] * product.price
      # tax = subtotal * (0.09)
      # total = subtotal + tax 

      order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
      )
      if order.save
        
        render json: {message: "Thank you"}
      else 
        render json: order.error.full_message
      end 
    else 
      render json: {message: "Please Log In"}
    end 
  end



  # def show 
  #   current_user_id_match = current_user.order.find_by(params[:id])
  #   current_user_id_match = current_user.order.where(params[:id])
  #   if current_user_id_match
  #     render json: current_user.find_by(params[:id])
  #   else 
  #     render json: {message: "error"}
  #   end 
  # end
end
