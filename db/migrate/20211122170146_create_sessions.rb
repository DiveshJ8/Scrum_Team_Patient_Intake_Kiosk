class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.integer :session_id
      t.integer :user_id
      t.datetime :expiration
      t.timestamps
    end
  end
end
