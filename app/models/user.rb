class User < ActiveRecord::Base
  has_many :playlists

  validates :username, presence: true

end
