class AddProductIdToColorAndSize < ActiveRecord::Migration[5.0]
  def change
    add_column :colors , :product_id , :integer
    add_column :sizes, :product_id, :integer
  end
end
