class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :plate_number
      t.integer :persona_id
      t.string :type_description
      t.string :color
      t.timestamps null: false
    end
  end
end
