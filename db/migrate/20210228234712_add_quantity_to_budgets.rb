class AddQuantityToBudgets < ActiveRecord::Migration[6.0]
  def change
    add_column :budgets, :quantity, :integer
  end
end
