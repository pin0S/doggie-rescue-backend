class AddColumnToAdoption < ActiveRecord::Migration[6.0]
  def change
    add_reference :adoptions, :pet, null: false, foreign_key: true
    add_reference :adoptions, :user, null: false, foreign_key: true
  end
end
