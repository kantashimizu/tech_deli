class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :user_id
      t.string :drink_id
      t.integer :seat
      t.timestamps
    end
  end
end
