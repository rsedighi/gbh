json.array!(@responses) do |response|
  json.extract! response, :id, :rsvp, :confirmation
  json.url response_url(response, format: :json)
end
