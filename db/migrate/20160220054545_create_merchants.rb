class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :category
      t.string :street_number
      t.string :street_name
      t.string :city

      t.timestamps null: false
    end
  end
end
