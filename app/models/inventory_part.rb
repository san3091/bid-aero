class InventoryPart < ActiveRecord::Base
  belongs_to :part
  validates :Description, :PartNum, :SerialNum, :Qty, :Manufacturer, presence: true
  
end
