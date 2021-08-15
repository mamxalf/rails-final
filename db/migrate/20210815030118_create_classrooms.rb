class CreateClassrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :classrooms, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
