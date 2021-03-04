class AddProductToBudgets < ActiveRecord::Migration[6.0]
  def change
    add_reference :budgets, :product, null: false, foreign_key: true
  end
end
