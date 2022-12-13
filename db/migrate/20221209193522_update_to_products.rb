class UpdateToProducts < ActiveRecord::Migration[7.0]
  def change
    ### changed string to text
    change_column :products, :description, :text
    ### changed price to decimal
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, precision: 9, scale: 2
    ### new attribute
    add_column :products, :stock, :string
  end
end
