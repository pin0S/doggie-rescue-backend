class DropAdoptionsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :adoptions 
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
