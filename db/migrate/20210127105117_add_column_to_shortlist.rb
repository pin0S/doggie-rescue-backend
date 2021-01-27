class AddColumnToShortlist < ActiveRecord::Migration[6.0]
  def change
    add_reference :shortlists, :user, null: false, foreign_key: true
    add_reference :shortlists, :pet, null: false, foreign_key: true
  end
end
