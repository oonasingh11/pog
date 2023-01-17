class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.float :valuation
      t.float :performance

      t.timestamps
    end
  end
end
