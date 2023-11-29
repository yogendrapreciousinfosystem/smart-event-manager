class AddDeviseColumnsToAccounts < ActiveRecord::Migration[6.1]
  def change
    change_column :accounts, :email, :string, null: false, default: ""
  end
end
