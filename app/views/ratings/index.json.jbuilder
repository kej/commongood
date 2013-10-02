json.array!(@ratings) do |rating|
  json.extract! rating, :title, :ratio
  json.url rating_url(rating, format: :json)
end
