class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :client_id
      t.string :password
      t.datetime :last_login
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone_no
      t.timestamps
    end

    add_foreign_key :users,:clients, column: :client_id
    add_index :users, :client_id
  end
end
