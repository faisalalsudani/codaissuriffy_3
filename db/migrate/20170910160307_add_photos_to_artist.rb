class AddPhotosToArtist < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :photos, :string
  end
end
