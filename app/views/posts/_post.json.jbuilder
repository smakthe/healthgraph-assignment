json.extract! post, :id, :title, :body, :trashed, :created_at, :updated_at
json.url post_url(post, format: :json)
