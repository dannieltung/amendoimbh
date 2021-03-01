class ChangeQuantityToStockQuantity < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :quantity, :stock_quantity
  end
end
