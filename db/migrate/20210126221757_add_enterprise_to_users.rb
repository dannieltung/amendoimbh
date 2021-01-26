class AddEnterpriseToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :enterprise, :string
  end
end
