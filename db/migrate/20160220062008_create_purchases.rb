class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :purchase_type
      t.datetime :purchase_date
      t.decimal :amount, precision: 16, scale: 2
      t.string :status
      t.string :medium
      t.string :description
      t.belongs_to :merchant, index: true
      t.belongs_to :account, index: true

      t.timestamps null: false
    end
  end
end
