json.extract! event, :id, :title, :starts_at, :ends_at, :all_day, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
