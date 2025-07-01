class AddMemberToPosts < ActiveRecord::Migration[8.0]
  def change
    add_reference :posts, :member, null: false, foreign_key: true
  end
end
