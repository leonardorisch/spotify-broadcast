require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "43315ec454d4496ead806bc98097e0f0", "3c199268456b4cf1bf582ee183375a54", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end
