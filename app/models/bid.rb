class Bid < ActiveRecord::Base
  belongs_to :company
  belongs_to :auction
  belongs_to :inventory_part

  def formatted_price
    "$%.2f" % self[:amount]
  end

  def self.supplier_auctions user_bids
    if user_bids
      user_bids.each do |bid|
        @auctions << bid.auction
      end
      @auctions.uniq! unless @auction.nil?
    end
  end
end
