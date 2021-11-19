class CreateHealthHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :health_histories do |t|
      t.integer :health_history_id
      t.integer :patient_id
      t.string :relation
      t.string :status
      t.string :value_type
      t.string :value
      t.timestamps
    end
  end
end
