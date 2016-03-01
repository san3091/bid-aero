class AddConditionToAuctionPart < ActiveRecord::Migration
  def change
    add_reference :auction_parts, :condition, index: true, foreign_key: true
  end
end
