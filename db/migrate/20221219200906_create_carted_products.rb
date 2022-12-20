class CreateCartedProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :carted_products do |t|

      t.timestamps
    end
  end
end
