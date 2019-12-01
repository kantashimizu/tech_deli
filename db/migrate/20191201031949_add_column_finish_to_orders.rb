class AddColumnFinishToOrders < ActiveRecord::Migration[5.2]
  def change
    
    add_column :orders,:finish,:string
  end
end
