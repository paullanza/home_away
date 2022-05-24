class CreateUsersExpertises < ActiveRecord::Migration[6.1]
  def change
    create_table :users_expertises do |t|
      t.references :user, null: false, foreign_key: true
      t.references :expertise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
