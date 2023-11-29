class AddColumnsToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :event_date, :date
    add_column :events, :latitude, :string
    add_column :events, :longitude, :string
    add_column :events, :location, :string
    add_column :events, :notify, :integer
    add_column :events, :repeat, :integer
    add_column :events, :notes, :text
    add_column :events, :address, :text
  end
end