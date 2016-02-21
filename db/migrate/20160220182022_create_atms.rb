class CreateAtms < ActiveRecord::Migration
  def change
    create_table :atms do |t|
      t.string :name
      t.string :lat
      t.string :lng
      t.references :account, index: true

      t.timestamps null: false
    end
  end
end
