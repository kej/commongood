json.array!(@indicator_stakeholders) do |indicator_stakeholder|
  json.extract! indicator_stakeholder, :indicator_id, :stakeholder_id
  json.url indicator_stakeholder_url(indicator_stakeholder, format: :json)
end
