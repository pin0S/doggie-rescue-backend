class CreateActivityLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :activity_levels do |t|
      t.integer :status

      t.timestamps
    end
  end
end
