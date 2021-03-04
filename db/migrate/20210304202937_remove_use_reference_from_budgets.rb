class RemoveUseReferenceFromBudgets < ActiveRecord::Migration[6.0]
  def change
    remove_reference :budgets, :user, index: true, foreign_key: true
  end
end
