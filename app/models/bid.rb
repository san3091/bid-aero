class Bid < ActiveRecord::Base
  belongs_to :company
  belongs_to :auction

  def formatted_price
    "$%.2f" % self[:amount]
  end
end
