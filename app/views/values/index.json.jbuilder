json.array!(@values) do |value|
  json.extract! value, :title
  json.url value_url(value, format: :json)
end
