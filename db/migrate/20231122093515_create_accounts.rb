class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :full_name
      t.string :email
      t.string :full_phone_number
      t.integer :country_code
      t.boolean :activated, :null => false, :default => false
      t.string :device_id
      t.string :password_digest
      t.string :type
      t.integer :gender
      t.date :date_of_birth
      t.integer :age
      t.string :country_name
      t.timestamps      
    end
  end
end
