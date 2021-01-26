class CreatePetSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_sizes do |t|
      t.integer :status

      t.timestamps
    end
  end
end
