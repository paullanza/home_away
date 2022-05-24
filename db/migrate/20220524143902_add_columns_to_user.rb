class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :origin, :string
    add_column :users, :residence, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :biography, :text
  end
end
