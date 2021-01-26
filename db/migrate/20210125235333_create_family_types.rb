class CreateFamilyTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :family_types do |t|
      t.integer :status

      t.timestamps
    end
  end
end
