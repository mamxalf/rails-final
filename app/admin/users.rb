# frozen_string_literal: true

ActiveAdmin.register User do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :full_name, :email, :address, :password, :password_confirmation, extra: :role
  #
  # or
  #
  # permit_params do
  #   permitted = [:full_name, :email, :address, :encrypted_password, :extra, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  #
  index do
    selectable_column
    id_column
    column :full_name
    column :email
    column :address
    column :extra
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :full_name
      row :email
      row :address
      row :extra
      row :created_at
    end
  end

  filter :full_name
  filter :email
  filter :address
  filter :created_at

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :address
      f.inputs name: 'Extra', for: :extra do |key|
        key.input :role, require: true, label: 'Role', as: :select, collection: ['student', 'teacher']
      end
    end
    f.actions
  end
end
