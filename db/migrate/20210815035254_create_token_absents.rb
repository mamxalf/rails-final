class CreateTokenAbsents < ActiveRecord::Migration[6.1]
  def change
    create_table :token_absents, id: :uuid do |t|
      t.string :token_credential
      t.string :absent_code
      t.boolean :status

      t.timestamps
    end
  end
end
