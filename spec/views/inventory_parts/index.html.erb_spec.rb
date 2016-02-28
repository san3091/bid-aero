require 'rails_helper'

RSpec.describe "inventory_parts/index", type: :view do
  before(:each) do
    assign(:inventory_parts, [
      InventoryPart.create!(),
      InventoryPart.create!()
    ])
  end

  it "renders a list of inventory_parts" do
    render
  end
end
