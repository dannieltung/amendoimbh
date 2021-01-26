class AddUserReferenceToBudgets < ActiveRecord::Migration[6.0]
  def change
    add_reference :budgets, :user, index: true
    add_foreign_key :budgets, :users
  end
end
