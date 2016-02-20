class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :status
      t.string :payee
      t.string :nickname
      t.date :creation_date
      t.date :payment_date
      t.integer :recurring_date
      t.date :upcoming_payment_date
      t.decimal :payment_amount, precision: 16, scale: 2

      t.timestamps null: false
    end
  end
end
