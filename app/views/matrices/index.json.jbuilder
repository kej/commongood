json.array!(@matrices) do |matrix|
  json.extract! matrix, :title
  json.url matrix_url(matrix, format: :json)
end
