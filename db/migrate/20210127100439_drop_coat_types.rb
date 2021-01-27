class DropCoatTypes < ActiveRecord::Migration[6.0]
  def up
    drop_table :coat_types 
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
