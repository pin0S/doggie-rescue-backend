class DropExperiencesTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :experiences 
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
