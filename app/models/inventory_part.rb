class InventoryPart < ActiveRecord::Base
  belongs_to :part
  belongs_to :company
  validates :description, :part_num, :serial_num, :manufacturer, presence: true

end
