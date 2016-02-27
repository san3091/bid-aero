class Bid < ActiveRecord::Base
  belongs_to :company
  belongs_to :auction
end
