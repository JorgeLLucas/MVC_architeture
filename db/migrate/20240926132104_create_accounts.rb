class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.integer :number
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
