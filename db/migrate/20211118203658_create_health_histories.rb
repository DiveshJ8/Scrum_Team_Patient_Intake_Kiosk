class CreateHealthHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :health_histories do |t|
      t.integer :patient_id
      t.string :medications
      t.date :tetanus
      t.date :flu
      t.date :zoster
      t.date :pnuemovax
      t.date :prevnar
      t.boolean :asthma
      t.boolean :cancer
      t.boolean :depression
      t.boolean :diabetes
      t.boolean :heart_disease
      t.boolean :high_blood_pressure
      t.boolean :high_cholesterol
      t.boolean :stroke
      t.string :other
      t.string :surgeries
      t.string :family_medical_history
      t.timestamps
    end
  end
end
