# frozen_string_literal: true

ActiveAdmin.register Classroom do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    index_column
    column :name
    column :created_at
    column :schedules do |classroom|
      table_for classroom.schedules do
        column 'Info' do |field|
          "#{field.day} - #{field.start}"
        end
      end
    end
    actions
  end
end
