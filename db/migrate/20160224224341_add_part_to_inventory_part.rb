class AddPartToInventoryPart < ActiveRecord::Migration
  def change
    add_reference :inventory_parts, :part, index: true, foreign_key: true
  end
end
