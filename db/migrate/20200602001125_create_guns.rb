class CreateGuns < ActiveRecord::Migration
  def change
    create_table :guns do |t|
      t.string :serial_num
      t.integer :persona_id

      t.timestamps null: false
    end
  end
end
