class Auction < ActiveRecord::Base
  has_many :bids
  has_one :auction_part
  belongs_to :company

end
