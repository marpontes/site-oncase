class CreateCaseProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :case_products do |t|
      t.string :category
      t.string :name
      t.text :description
      t.integer :color
      t.string :link

      t.timestamps
    end
  end
end
