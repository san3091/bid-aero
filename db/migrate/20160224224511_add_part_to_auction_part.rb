class AddPartToAuctionPart < ActiveRecord::Migration
  def change
    add_reference :auction_parts, :part, index: true, foreign_key: true
  end
end
