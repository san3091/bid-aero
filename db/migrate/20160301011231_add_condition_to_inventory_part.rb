class AddConditionToInventoryPart < ActiveRecord::Migration
  def change
    add_reference :inventory_parts, :condition, index: true, foreign_key: true
  end
end
