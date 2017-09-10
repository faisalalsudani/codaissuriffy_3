class RemoveImageFromArtist < ActiveRecord::Migration[5.1]
  def change
    remove_column :artists, :image, :string
  end
end
