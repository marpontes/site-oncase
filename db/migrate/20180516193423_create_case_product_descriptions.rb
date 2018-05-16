class CreateCaseProductDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :case_product_descriptions do |t|
      t.references :case_product, foreign_key: true
      t.integer :position
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
