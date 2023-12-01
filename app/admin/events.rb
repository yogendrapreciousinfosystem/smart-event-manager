ActiveAdmin.register Event do
  permit_params :title, :description, :event_type, :start_time, :end_time, :capacity,
                :public, :event_date, :latitude, :longitude, :location,
                :notify, :repeat, :notes, :address

  index do
    selectable_column
    id_column
    column :title
    column :start_time
    column :end_time
    column :event_date
    column :location
    column :public
    actions
  end

  filter :title
  filter :start_time
  filter :end_time
  filter :event_date
  filter :location
  filter :public

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :event_type
      f.input :start_time
      f.input :end_time
      f.input :capacity
      f.input :public
      f.input :event_date, as: :datepicker
      f.input :latitude
      f.input :longitude
      f.input :location
      f.input :notify
      f.input :repeat
      f.input :notes
      f.input :address
    end
    f.actions
  end
end
