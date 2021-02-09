class ChangePetDescriptionStringToText < ActiveRecord::Migration[6.0]
  def change
    change_column :pets, :description, :text
  end
end
