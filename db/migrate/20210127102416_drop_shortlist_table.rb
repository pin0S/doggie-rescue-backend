class DropShortlistTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :shortlists
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
