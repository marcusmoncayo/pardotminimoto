json.array!(@users) do |user|
  json.extract! user, :id, :username, :height, :weight
  json.url user_url(user, format: :json)
end
