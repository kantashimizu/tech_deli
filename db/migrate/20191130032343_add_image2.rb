class AddImage2 < ActiveRecord::Migration[5.2]
  def change
    add_column :drinks, :image, :string
  end
end
