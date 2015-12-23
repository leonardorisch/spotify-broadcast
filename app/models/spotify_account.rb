class SpotifyAccount < ActiveRecord::Base
  has_many :playlists

  validates :username, presence: true, uniqueness: true
  validates :display_name, presence: true
  validates :picture_url, presence: true
  validates :followers, presence: true
  validates :profile_url, presence: true, uniqueness: true
end
