class Auction < ActiveRecord::Base
  has_many :bids
  belongs_to :company
end
