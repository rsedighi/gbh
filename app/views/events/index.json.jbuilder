json.array!(@events) do |event|
  json.extract! event, :id, :details, :when, :where, :uid, :user_response
  json.url event_url(event, format: :json)
end
