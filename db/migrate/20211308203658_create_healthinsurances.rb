class CreateHealthinsurances < ActiveRecord::Migration[6.1]
  def change
    create_table :healthinsurances do |t|
      t.string :healthinsurance_id
      t.string :insurer_name
      t.integer :patient_id
      t.integer :serial_id
      t.timestamps
    end
  end
end
