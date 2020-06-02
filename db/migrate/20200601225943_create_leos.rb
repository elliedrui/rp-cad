class CreateLeos < ActiveRecord::Migration
  def change
    create_table :leos do |t|
      t.integer :persona_id
      t.integer :agency_id
      t.boolean :on_duty

      t.timestamps null: false
    end
  end
end
