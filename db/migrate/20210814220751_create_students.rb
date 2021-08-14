class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students, id: :uuid do |t|
      t.string :nis

      t.timestamps
    end
  end
end
