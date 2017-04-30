class ChangeSizeIdToDimensionId < ActiveRecord::Migration[5.0]
  def change
    rename_column :product_options, :size_id, :dimension_id
  end
end
