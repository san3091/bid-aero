class AuctionPart < ActiveRecord::Base
  belongs_to :part
  validates  :part_num, presence: true
end

 # :manufacturer, :description
