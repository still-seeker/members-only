class AddNameToMembers < ActiveRecord::Migration[8.0]
  def change
    add_column :members, :name, :string
    add_index :members, :name
  end
end
