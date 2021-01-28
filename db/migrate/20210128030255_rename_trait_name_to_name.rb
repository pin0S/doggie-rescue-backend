class RenameTraitNameToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :traits, :trait_name, :name
  end
end
