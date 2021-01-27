class AddColumnToPreference < ActiveRecord::Migration[6.0]
  def change
    add_reference :preferences, :user, null: false, foreign_key: true
    add_reference :preferences, :trait_options, null: false, foreign_key: true
  end
end
