class CreateLPandGps < ActiveRecord::Migration[7.0]
  def change
    create_table :l_pand_gps do |t|
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.string :role
      t.string :access

      t.timestamps
    end
  end
end
