class DropSizeTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :sizes
  end
end
