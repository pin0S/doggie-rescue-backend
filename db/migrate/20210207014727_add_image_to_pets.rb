class AddImageToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :featured_image, :string
  end
end
