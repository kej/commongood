json.array!(@chapters) do |chapter|
  json.extract! chapter, :report_id, :indicator_id
  json.url chapter_url(chapter, format: :json)
end
