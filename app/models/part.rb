class Part < ActiveRecord::Base
  has_many :inventory_part
  has_many :auction_part
end
