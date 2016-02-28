class AddInventoryPartToBid < ActiveRecord::Migration
  def change
    add_reference :bids, :inventory_part, index: true, foreign_key: true
  end
end
