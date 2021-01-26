class AddColumnToAdoptions < ActiveRecord::Migration[6.0]
  def change
    add_column :adoptions, :initial_call, :datetime
    add_column :adoptions, :meet_pet, :datetime
    add_column :adoptions, :adoption, :boolean
  end
end
