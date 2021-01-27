class AddColumnToTraitOption < ActiveRecord::Migration[6.0]
  def change
    add_reference :trait_options, :trait, null: false, foreign_key: true
  end
end
