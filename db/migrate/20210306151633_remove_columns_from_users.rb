class RemoveColumnsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :address
    remove_column :users, :razao_social
    remove_column :users, :phone
  end
end
