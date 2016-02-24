class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :Description
      t.string :PartNum
      t.string :SerialNum
      t.integer :MinQty
      t.string :Manufacturer
      t.decimal :MfgPrice

      t.timestamps null: false
    end
  end
end
