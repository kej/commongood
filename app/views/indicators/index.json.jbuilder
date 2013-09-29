json.array!(@indicators) do |indicator|
  json.extract! indicator, :short, :title, :matrix_id, :max_points
  json.url indicator_url(indicator, format: :json)
end
