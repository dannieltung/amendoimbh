class RemoveUserReferenceFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_reference :products, :user, null: false, foreign_key: true
  end
end
