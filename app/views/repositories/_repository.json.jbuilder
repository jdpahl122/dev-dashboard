json.extract! repository, :id, :name, :url, :created_at, :updated_at
json.url repository_url(repository, format: :json)
