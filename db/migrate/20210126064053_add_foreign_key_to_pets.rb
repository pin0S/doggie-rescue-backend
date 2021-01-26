class AddForeignKeyToPets < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :activity_levels, :pets, dependent: :delete
    add_foreign_key :age_pets, :pets, dependent: :delete
    add_foreign_key :coat_types, :pets, dependent: :delete
    add_foreign_key :family_types, :pets, dependent: :delete
    add_foreign_key :households, :pets, dependent: :delete
    add_foreign_key :other_pets, :pets, dependent: :delete
    add_foreign_key :pet_sizes, :pets, dependent: :delete
    add_foreign_key :type_pets, :pets, dependent: :delete
  end
end
