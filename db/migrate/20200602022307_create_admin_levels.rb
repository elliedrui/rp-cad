class CreateAdminLevels < ActiveRecord::Migration
  def change
    create_table :admin_levels do |t|
      t.integer :admin_level
      t.string :description
      t.timestamps null: false
    end
  end
end
