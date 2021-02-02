class RenameColumnInPreferences < ActiveRecord::Migration[6.0]
  def change
    rename_column :preferences, :trait_options_id, :trait_option_id
  end
end
