class DropOtherPetsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :other_pets 
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
