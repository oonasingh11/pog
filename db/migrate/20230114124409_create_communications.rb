class CreateCommunications < ActiveRecord::Migration[7.0]
  def change
    create_table :communications do |t|
      t.references :sender, null: false, foreign_key: true
      t.references :reciever, null: false, foreign_key: true
      t.text :message

      t.timestamps
    end
  end
end
