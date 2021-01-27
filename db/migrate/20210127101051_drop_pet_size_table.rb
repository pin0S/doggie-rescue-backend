class DropPetSizeTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :pet_sizes 
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
