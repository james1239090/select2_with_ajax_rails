class ChangeProductIdToProductOptionId < ActiveRecord::Migration[5.0]
  def change
    #remove_column :sizes, :product_id
    remove_column :colors, :product_id
  end
end
