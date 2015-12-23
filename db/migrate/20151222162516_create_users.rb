class CreateUsers < ActiveRecord::Migration
  def change
    create_table :spotify_accounts do |t|
      t.string :username
      t.string :display_name
      t.string :picture_url
      t.string :followers
      t.string :profile_url
    end
  end
end
