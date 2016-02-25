class AddInAuctionToInventoryParts < ActiveRecord::Migration
  def change
    add_column :inventory_parts, :in_auction, :boolean
  end
end
