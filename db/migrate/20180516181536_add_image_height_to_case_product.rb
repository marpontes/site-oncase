class AddImageHeightToCaseProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :case_products, :image_height, :integer
  end
end
