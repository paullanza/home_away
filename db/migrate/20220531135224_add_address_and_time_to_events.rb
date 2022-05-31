class AddAddressAndTimeToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :address, :string
    add_column :events, :starting_time, :string
    add_column :events, :ending_time, :string
  end
end
