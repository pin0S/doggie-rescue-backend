class DropFamilyTypesTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :family_types
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
