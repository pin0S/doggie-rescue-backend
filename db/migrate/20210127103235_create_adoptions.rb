class CreateAdoptions < ActiveRecord::Migration[6.0]
  def change
    create_table :adoptions do |t|
      t.datetime :initial_call
      t.datetime :meet_pet
      t.boolean :adoption

      t.timestamps
    end
  end
end
