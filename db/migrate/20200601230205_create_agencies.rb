class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :acronym
      t.string :type_of_agency #leo fire or ems

      t.timestamps null: false
    end
  end
end
