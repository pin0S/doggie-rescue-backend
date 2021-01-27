class ChangeColumnPets < ActiveRecord::Migration[6.0]
  def up 
    change_column :pets, :score, :bigint
  end
end
