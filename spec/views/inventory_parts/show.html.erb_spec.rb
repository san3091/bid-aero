require 'rails_helper'

RSpec.describe "inventory_parts/show", type: :view do
  before(:each) do
    @inventory_part = assign(:inventory_part, InventoryPart.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
