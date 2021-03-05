class RemoveEnterpriseFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :enterprise, :string
  end
end
