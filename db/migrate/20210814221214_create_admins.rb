class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins, id: :uuid do |t|

      t.timestamps
    end
  end
end
