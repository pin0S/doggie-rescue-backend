class DropActivityLevelsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :activity_levels 
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
