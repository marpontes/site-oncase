class AddCodeLinkToTechProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :tech_products, :code_link, :string
  end
end
