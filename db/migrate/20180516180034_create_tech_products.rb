class CreateTechProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :tech_products do |t|
      t.string :name
      t.text :description
      t.boolean :code_available
      t.string :link

      t.timestamps
    end
  end
end
