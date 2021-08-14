class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers, id: :uuid do |t|
      t.string :nik

      t.timestamps
    end
  end
end
