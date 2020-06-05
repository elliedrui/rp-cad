class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.integer :persona_id
      t.string :description
      t.boolean :has_interior
      t.timestamps null: false
    end
  end
end
