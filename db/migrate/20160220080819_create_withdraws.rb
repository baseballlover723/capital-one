class CreateWithdraws < ActiveRecord::Migration
  def change
    create_table :withdraws do |t|
      t.string :withdraw_type
      t.datetime :transaction_date
      t.string :status
      t.string :medium
      t.decimal :amount, precision: 16, scale: 2
      t.string :description
      t.references :account, index: true

      t.timestamps null: false
    end
  end
end
