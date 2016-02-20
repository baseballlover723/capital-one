class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_number
      t.string :street_name
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
