class CreateInventoryParts < ActiveRecord::Migration
  def change
    create_table :inventory_parts do |t|
      t.string :description
      t.string :part_num
      t.string :serial_num
      t.integer :qty
      t.string :manufacturer

      t.timestamps null: false
    end
  end
end
