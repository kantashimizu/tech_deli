class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :genre
      t.integer :price
      t.timestamps
    end
  end
end
