json.array!(@bids) do |bid|
  json.extract! bid, :id, :auction_id, :amount
  json.url bid_url(bid, format: :json)
end
