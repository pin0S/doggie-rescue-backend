class DropTypePetTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :type_pets 
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
