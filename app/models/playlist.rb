class Playlist < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :spotify_account
end
