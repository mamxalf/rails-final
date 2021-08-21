# frozen_string_literal: true

ActiveAdmin.register Schedule do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :course_id, :classroom_id, :room_id, :day, :start, :finish
  #
  # or
  #
  # permit_params do
  #   permitted = [:course_id, :classroom_id, :room_id, :day, :start, :finish]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.input :course_id, require: true, as: :select, collection: Course.all.map { |field| [field.title, field.id] }
      f.input :classroom_id, require: true, as: :select, collection: Classroom.all.map { |field| [field.name, field.id] }
      f.input :room_id, require: true, as: :select, collection: Room.all.map { |field| [field.code, field.id] }
      f.input :day, require: true, as: :select, collection: ['senin', 'selasa', 'rabu', 'kamis', "jum'at"], include_blank: false
      f.input :start, require: true, as: :date_time_picker
      f.input :finish, require: true, as: :date_time_picker
    end
    f.actions
  end
end
