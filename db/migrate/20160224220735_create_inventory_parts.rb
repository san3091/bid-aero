class CreateInventoryParts < ActiveRecord::Migration
  def change
    create_table :inventory_parts do |t|
      t.string :Description
      t.string :PartNum
      t.string :SerialNum
      t.integer :Qty
      t.string :Manufacturer

      t.timestamps null: false
    end
  end
end
