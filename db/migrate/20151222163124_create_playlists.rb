class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.references :user
      t.string :name
      t.string :songs, array:true
    end
  end
end
