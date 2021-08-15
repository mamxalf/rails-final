class CreateTimeAbsents < ActiveRecord::Migration[6.1]
  def change
    create_table :time_absents, id: :uuid do |t|
      t.references :schedule, null: false, foreign_key: true, type: :uuid
      t.datetime :start
      t.datetime :finish
      t.text :resume
      t.string :token_credential

      t.timestamps
    end
  end
end
