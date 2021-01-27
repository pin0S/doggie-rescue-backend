class DropEmploymentTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :employments 
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
