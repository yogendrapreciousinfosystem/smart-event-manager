class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :description
      t.string :event_type
      t.datetime :start_time, null: false
      t.datetime :end_time
      t.integer :capacity
      t.boolean :public, default: true
      t.references :account, foreign_key: true
      
      t.timestamps
    end
  end
end
