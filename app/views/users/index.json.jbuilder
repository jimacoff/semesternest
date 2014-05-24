json.array!(@users) do |user|
  json.extract! user, :id, :username, :name, :mail, :password
  json.url user_url(user, format: :json)
end
