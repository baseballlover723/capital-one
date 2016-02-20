class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.string :type
      t.datetime :transaction_date
      t.string :status
      t.string :medium
      t.references :payer, index: true
      t.references :payee, index: true
      t.timestamps null: false
    end
  end
end
