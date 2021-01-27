class CreateApplicationRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :application_records do |t|

      t.timestamps
    end
  end
end
