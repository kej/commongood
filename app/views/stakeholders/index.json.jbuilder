json.array!(@stakeholders) do |stakeholder|
  json.extract! stakeholder, :title
  json.url stakeholder_url(stakeholder, format: :json)
end
