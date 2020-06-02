class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.integer :persona_id

      t.timestamps null: false
    end
  end
end
