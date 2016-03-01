class AuctionPart < ActiveRecord::Base
  belongs_to :part
  belongs_to :auction
  belongs_to :condition
  validates  :part_num, presence: true
end

 # :manufacturer, :description
