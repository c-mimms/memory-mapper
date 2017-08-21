json.extract! text_memory, :id, :title, :text, :date, :lat, :lon, :created_at, :updated_at
json.url text_memory_url(text_memory, format: :json)
