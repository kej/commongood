json.array!(@indicator_values) do |indicator_value|
  json.extract! indicator_value, :indicator_id, :value_id
  json.url indicator_value_url(indicator_value, format: :json)
end
