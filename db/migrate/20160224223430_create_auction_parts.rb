class CreateAuctionParts < ActiveRecord::Migration
  def change
    create_table :auction_parts do |t|
      t.string :description
      t.string :part_num
      t.string :manufacturer
      t.string :mfg_price
      t.decimal :minimum_cycles_remaining
      t.integer :lead_time

      t.timestamps null: false
    end
  end
end
