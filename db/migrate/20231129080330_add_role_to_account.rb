class AddRoleToAccount < ActiveRecord::Migration[6.1]
  def change
    add_reference :accounts, :role, null: true, foreign_key: true
  end
end
