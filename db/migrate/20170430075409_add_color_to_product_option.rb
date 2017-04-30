class AddColorToProductOption < ActiveRecord::Migration[5.0]
  def change
    add_column :product_options, :color_id, :integer
  end
end
