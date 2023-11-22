ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :image

  index do
    selectable_column
    id_column
    column :email
    column :image do |object|
      object.image.present? ? image_tag(object.image, height: '50') : nil
    end
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs 'Admin User Details' do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :email
      row :image do |admin_user|
        if admin_user.image.attached?
          image_tag(admin_user.image, height: '100')
        else
          "No image"
        end
      end
    end
    active_admin_comments
  end
end
