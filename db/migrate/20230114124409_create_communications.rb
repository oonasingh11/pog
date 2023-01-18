class CreateCommunications < ActiveRecord::Migration[7.0]
  def change
    create_table :communications do |t|
      t.references :user, foreign_key: true, null: false, type: :integer, index: true
      t.text :message

      t.timestamps
    end
  end
end
