# frozen_string_literal: true

ActiveAdmin.register AdminUser do
  permit_params :full_name, :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :full_name
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :full_name
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
