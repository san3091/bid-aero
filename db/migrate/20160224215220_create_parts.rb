class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :description
      t.string :part_num
      t.integer :min_qty
      t.string :manufacturer
      t.decimal :mfg_price

      t.timestamps null: false
    end
  end
end
