class CreateShortlists < ActiveRecord::Migration[6.0]
  def change
    create_table :shortlists do |t|

      t.timestamps
    end
  end
end
