class AddUserReferencesToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :user1, foreign_key: { to_table: :users }
    add_reference :chatrooms, :user2, foreign_key: { to_table: :users }
  end
end
