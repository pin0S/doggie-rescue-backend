class CreateTypePets < ActiveRecord::Migration[6.0]
  def change
    create_table :type_pets do |t|
      t.integer :status

      t.timestamps
    end
  end
end
