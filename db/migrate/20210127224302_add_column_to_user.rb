class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :score, :bigint
  end
end
