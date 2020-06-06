class CreateGovs < ActiveRecord::Migration
  def change
    create_table :govs do |t|
      t.integer :persona_id
      t.integer :agency_id
      t.boolean :on_duty

      t.timestamps null: false
    end
  end
end

#do i really need the agency id here
#or can i just hold that in gov??