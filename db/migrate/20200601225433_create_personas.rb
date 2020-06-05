class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :first_name
      t.string :last_name
      t.integer :member_id
      t.integer :has_agency
      t.integer :agency_id

      t.timestamps null: false
    end
  end
end
