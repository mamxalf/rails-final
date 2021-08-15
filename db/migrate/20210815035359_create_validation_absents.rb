class CreateValidationAbsents < ActiveRecord::Migration[6.1]
  def change
    create_table :validation_absents, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :absent_code
      t.datetime :time

      t.timestamps
    end
  end
end
