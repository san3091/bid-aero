class AddCompanyToInventoryPart < ActiveRecord::Migration
  def change
    add_reference :inventory_parts, :company, index: true, foreign_key: true
  end
end
