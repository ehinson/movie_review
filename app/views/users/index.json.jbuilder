json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :password_hash
  json.url user_url(user, format: :json)
end
