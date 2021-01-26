class CreateOtherPets < ActiveRecord::Migration[6.0]
  def change
    create_table :other_pets do |t|
      t.integer :status

      t.timestamps
    end
  end
end
