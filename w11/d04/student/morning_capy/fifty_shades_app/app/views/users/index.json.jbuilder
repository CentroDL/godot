json.array!(@users) do |user|
  json.extract! user, :id, :fname, :lname, :password_digest, :born_on
  json.url user_url(user, format: :json)
end
