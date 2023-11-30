ActiveAdmin.register Account do
  permit_params :full_name, :email, :full_phone_number, :country_code, :activated, :device_id, :password_digest, :type, :gender, :date_of_birth, :age, :country_name

  index do
    selectable_column
    id_column
    column :full_name
    column :email
    column :activated
    column :created_at
    actions
  end

  filter :full_name
  filter :email
  filter :activated
  filter :created_at

  show do
    attributes_table do
      row :full_name
      row :email
      row :full_phone_number
      row :country_code
      row :activated, as: :checkbox
      row :device_id
      row :role
      row :gender
      row :date_of_birth
      row :age
      row :country_name
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs 'Account Details' do
      f.input :role
      f.input :full_name
      f.input :email
      f.input :full_phone_number
      f.input :country_code
      f.input :gender
      # f.input :date_of_birth
      f.input :age
      f.input :country_name
      f.input :activated
    end
    f.actions
  end
end
