class InventoryPart < ActiveRecord::Base
  belongs_to :part
  validates :description, :part_num, :serial_num, :qty, :manufacturer, presence: true

end
