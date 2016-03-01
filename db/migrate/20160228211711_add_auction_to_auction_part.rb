class AddAuctionToAuctionPart < ActiveRecord::Migration
  def change
    add_reference :auction_parts, :auction, index: true, foreign_key: true
  end
end
