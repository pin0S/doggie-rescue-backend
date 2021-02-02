class RemoveColumnFromPets < ActiveRecord::Migration[6.0]
  def change
    remove_column :pets, :score, :bigInt
  end
end
