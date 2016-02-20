class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :type
      t.string :nickname
      t.decimal :rewards, precision: 16, scale: 2
      t.decimal :balance, precision: 16, scale: 2
      t.string :account_number
      t.string :customer_id

      t.timestamps null: false
    end
  end
end
