json.extract! blog, :id, :titol, :foto, :contingut, :created_at, :updated_at
json.url blog_url(blog, format: :json)
