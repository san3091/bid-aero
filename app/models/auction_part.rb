class AuctionPart < ActiveRecord::Base
  belongs_to :part
  validates :Description, :PartNum,  :Manufacturer, :Qty, presence: true
end
