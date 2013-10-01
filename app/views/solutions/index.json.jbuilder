json.array!(@solutions) do |solution|
  json.extract! solution, :description, :chapter_id, :order
  json.url solution_url(solution, format: :json)
end
