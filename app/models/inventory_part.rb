class InventoryPart < ActiveRecord::Base
  belongs_to :part
  belongs_to :company
  belongs_to :condition
  has_many :bids
  validates :description, :part_num, :serial_num, :manufacturer, presence: true

end
