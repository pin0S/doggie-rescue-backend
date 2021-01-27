class DropPetsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :pets
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
