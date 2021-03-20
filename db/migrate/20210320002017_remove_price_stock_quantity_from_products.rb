class RemovePriceStockQuantityFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :price
    remove_column :products, :stock_quantity
  end
end
