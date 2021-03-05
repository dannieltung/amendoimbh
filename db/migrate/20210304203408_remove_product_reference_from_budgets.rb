class RemoveProductReferenceFromBudgets < ActiveRecord::Migration[6.0]
  def change
    remove_reference :budgets, :product, null: false, foreign_key: true
  end
end
