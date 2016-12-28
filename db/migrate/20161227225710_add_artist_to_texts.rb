class AddArtistToTexts < ActiveRecord::Migration[5.0]
  def change
    add_column :texts, :artist, :string
  end
end
