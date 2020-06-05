class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :username
      t.integer :admin_level
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
