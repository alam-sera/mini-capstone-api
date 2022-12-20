class ChangeName < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :images, :image_url
  end
end
