class CreateAgePets < ActiveRecord::Migration[6.0]
  def change
    create_table :age_pets do |t|
      t.integer :status

      t.timestamps
    end
  end
end
