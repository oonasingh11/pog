class CreateInvestors < ActiveRecord::Migration[7.0]
  def change
    create_table :investors do |t|
      t.references :user, null: false, foreign_key: true
      t.text :update
      t.text :meeting
      t.text :contract

      t.timestamps
    end
  end
end
