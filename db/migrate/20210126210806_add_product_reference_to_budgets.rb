class AddProductReferenceToBudgets < ActiveRecord::Migration[6.0]
  def change
    add_reference :budgets, :product, index: true
    add_foreign_key :budgets, :products
  end
end
