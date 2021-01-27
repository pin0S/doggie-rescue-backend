class DropPreferenceTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :preferences
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
