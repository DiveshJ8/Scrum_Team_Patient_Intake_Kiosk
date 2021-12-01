class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.integer :patient_id
      t.integer :user_id
      t.string :license_no
      t.string :sex
      t.integer :height
      t.integer :weight
      t.string :marital_status
      t.string :race
      t.string :ethnicity
      t.string :income_group
      t.integer :emergency_contact_number
      t.string :emergency_contact_name
      t.string :emergency_contact_address
      t.string :emergency_contact_email
      t.string :rx_group
      t.string :rx_bin
      t.string :rx_pcn
      t.boolean :blue_button_approval
      t.string :visit_detail
      t.boolean :legal_consent
      t.string :insurance_no
      t.timestamps
    end
  end
end
