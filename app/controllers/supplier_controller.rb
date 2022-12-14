class SupplierController < ApplicationController
  def index
    suppliers = Supplier.all
    render json: suppliers
  end

  def show 
    number = params[:id]
    individual_supplier = Supplier.find(number)
    render json: individual_supplier.as_json
  end 
end
