class AddCategoryToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :case_products, :category, :string
  end
end
