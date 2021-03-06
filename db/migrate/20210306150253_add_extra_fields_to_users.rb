class AddExtraFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :address, :string
    add_column :users, :cnpj, :string
    add_column :users, :string, :string
    add_column :users, :razao_social, :string
    add_column :users, :phone, :string
  end
end
