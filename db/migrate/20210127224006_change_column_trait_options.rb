class ChangeColumnTraitOptions < ActiveRecord::Migration[6.0]
  def up 
    change_column :trait_options, :score, :bigint
  end
end
