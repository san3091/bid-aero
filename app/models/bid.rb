class Bid < ActiveRecord::Base
  belongs_to :company
  belongs_to :auction
  belongs_to :inventory_part

  def formatted_price
    "$%.2f" % self[:amount]
  end
end
