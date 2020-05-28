json.extract! comment, :id, :content, :trashed, :posts_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
