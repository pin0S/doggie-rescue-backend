class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :phone, :integer
    add_column :users, :first_name, :string
    add_column :users, :last, :name
    add_column :users, :string, :string
    add_column :users, :is_admin, :boolean
  end
end
