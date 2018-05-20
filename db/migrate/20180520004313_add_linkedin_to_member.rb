class AddLinkedinToMember < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :linkedin, :string
  end
end
