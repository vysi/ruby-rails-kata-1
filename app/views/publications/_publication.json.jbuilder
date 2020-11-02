json.extract! publication, :id, :title, :description, :isbn, :published_at, :publication_type, :created_at, :updated_at
json.url publication_url(publication, format: :json)
