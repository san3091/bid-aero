json.array!(@auction_parts) do |auction_part|
  json.extract! auction_part, :id
  json.url auction_part_url(auction_part, format: :json)
end
