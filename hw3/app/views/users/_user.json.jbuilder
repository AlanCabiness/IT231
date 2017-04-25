json.extract! user, :id, :username, :password, :email, :balance, :steamId, :created_at, :updated_at
json.url user_url(user, format: :json)
