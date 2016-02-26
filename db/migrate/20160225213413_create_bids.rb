class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.belongs_to :auction, index: true, foreign_key: true
      t.decimal :amount, null: false

      t.timestamps null: false
    end
  end
end
