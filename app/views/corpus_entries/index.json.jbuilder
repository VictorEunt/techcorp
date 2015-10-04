json.array!(@corpus_entries) do |corpus_entry|
  json.extract! corpus_entry, :id, :note
  json.url corpus_entry_url(corpus_entry, format: :json)
end
