json.array!(@auctions) do |auction|
  json.extract! auction, :id, :name, :description
  json.url auction_url(auction, format: :json)
end
