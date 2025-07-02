class RemoveNameFromMembers < ActiveRecord::Migration[8.0]
  def change
    remove_column :members, :name, :string
  end
end
