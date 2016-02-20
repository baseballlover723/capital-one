class CreateAtms < ActiveRecord::Migration
  def change
    create_table :atms do |t|
      t.string :u_id
      t.string :name
      t.string :lat
      t.string :lng

      t.timestamps null: false
    end
  end
end
