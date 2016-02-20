class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.string :type
      t.datetime :transaction_date
      t.string :status
      t.string :medium
      t.decimal :amount, precision: 16, scale: 2
      t.references :account, index: true

      t.timestamps null: false
    end
  end
end
