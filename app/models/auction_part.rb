class AuctionPart < ActiveRecord::Base
  belongs_to :part
  validates :description, :part_num, :manufacturer, :qty, presence: true
end
