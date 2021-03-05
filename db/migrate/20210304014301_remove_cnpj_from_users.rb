class RemoveCnpjFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :cnpj, :string
  end
end
