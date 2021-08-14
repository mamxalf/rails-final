# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.destroy_all
User.destroy_all

super_admin = Admin.create
user_super_admin = User.new(full_name: 'Super Admin', email: 'admin@admin.com', address: 'Mburi Sekolah',password: 'admin123', password_confirmation: 'admin123', roleable_type: 'Admin', roleable_id: super_admin.id)
unless user_super_admin.save
  return p user_super_admin.errors.full_messages
end
p user_super_admin.full_name if User.find_by(id: user_super_admin.id).present?

