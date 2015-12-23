json.array!(@spotify_accounts) do |spotify_account|
  json.extract! spotify_account, :id
  json.url spotify_account_url(spotify_account, format: :json)
end
