class DropBudgets < ActiveRecord::Migration[6.0]
  def change
    drop_table :budgets
  end
end
