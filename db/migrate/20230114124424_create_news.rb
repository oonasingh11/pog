class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.references :comapny, null: false, foreign_key: true
      t.text :update

      t.timestamps
    end
  end
end
