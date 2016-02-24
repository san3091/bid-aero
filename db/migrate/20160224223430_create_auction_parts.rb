class CreateAuctionParts < ActiveRecord::Migration
  def change
    create_table :auction_parts do |t|
      t.string :Description
      t.string :PartNum
      t.string :Manufacturer
      t.integer :Qty
      t.decimal :Minimum_Cycles_Remaining
      t.integer :Lead_Time

      t.timestamps null: false
    end
  end
end
