json.array!(@reports) do |report|
  json.extract! report, :title, :document_url, :company_id, :industry, :staff
  json.url report_url(report, format: :json)
end
