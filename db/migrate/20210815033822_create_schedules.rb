class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules, id: :uuid do |t|
      t.references :course, null: false, foreign_key: true, type: :uuid
      t.references :classroom, null: false, foreign_key: true, type: :uuid
      t.references :room, null: false, foreign_key: true, type: :uuid
      t.string :day
      t.time :start
      t.time :finish

      t.timestamps
    end
  end
end
