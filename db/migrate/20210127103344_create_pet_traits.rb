class CreatePetTraits < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_traits do |t|

      t.timestamps
    end
  end
end
