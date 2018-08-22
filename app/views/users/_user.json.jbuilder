json.extract! user, :id, :name, :password_digest, :email, :image_url, :index, :new, :created_at, :updated_at
json.url user_url(user, format: :json)
