class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :admin_level_id
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
