class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :title

      t.timestamps
    end
  end
end
