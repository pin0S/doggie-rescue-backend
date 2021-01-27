class DropAgePets < ActiveRecord::Migration[6.0]
  def up
    drop_table :age_pets
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
