json.array!(@parties) do |party|
  json.extract! party, :id, :name, :description, :location
  json.url party_url(party, format: :json)
end
