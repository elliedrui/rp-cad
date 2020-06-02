class CreateAdminLevels < ActiveRecord::Migration
  def change
    create_table :admin_levels do |t|
      t.string :admin_level

      t.timestamps null: false
    end
  end
end
