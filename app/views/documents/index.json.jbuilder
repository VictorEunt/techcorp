json.array!(@documents) do |document|
  json.extract! document, :id, :genre, :deliverable, :classification, :deadline, :format, :grade, :file_text
  json.url document_url(document, format: :json)
end
