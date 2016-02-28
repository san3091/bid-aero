class InventoryPart < ActiveRecord::Base
  belongs_to :part
  validates :description, :part_num, :serial_num, :manufacturer, presence: true

end
