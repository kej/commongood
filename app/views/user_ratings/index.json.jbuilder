json.array!(@user_ratings) do |user_rating|
  json.extract! user_rating, :user_id, :rateable_id, :rateable_type, :rating_id
  json.url user_rating_url(user_rating, format: :json)
end
