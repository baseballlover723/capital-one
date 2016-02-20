class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :account_type
      t.string :nickname
      t.decimal :rewards, precision: 16, scale: 2
      t.decimal :balance, precision: 16, scale: 2
      t.references :customer, index: true
      t.timestamps null: false
    end
  end
end
