class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :target_lang, :string
    add_column :users, :native_lang, :string
    add_column :users, :interface_lang, :string
    add_column :users, :favorite_artist, :string
  end
end
