class AddColumnToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :name, :string
  end
end
